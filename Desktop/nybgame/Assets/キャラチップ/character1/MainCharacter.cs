using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class MainCharacter : MonoBehaviour
{
    void Update()
    {
        Transform myTransform = this.transform;
        Vector3 pos = myTransform.position;
        if (Input.GetKeyDown(KeyCode.D)){
            pos.x += 1f;
        }else if (Input.GetKeyDown(KeyCode.A))
        {
            pos.x -= 1f;
        }
        else if (Input.GetKeyDown(KeyCode.W))
        {
            pos.y += 1f;
        }
        else if (Input.GetKeyDown(KeyCode.S))
        {
            pos.y -= 1f;
        }
        myTransform.position = pos;
    }
    private void OnCollisionEnter2D(Collision collision)
    {
        
    }
}