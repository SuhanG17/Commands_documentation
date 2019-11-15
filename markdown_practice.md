
<font size = '3'> Notice that if you need to go to the next line or need black spaces
1. use four blank spaces or a tab
2. use `<br />` or `<br>` </font>   

1. <font size = '4'>Font </font>   
    *italic* or _italic_    
    **bold**   
    ***italic and bold***    
    ~~strikethrough~~  
    <font color=red>Red Text</font>    <font color=blue>Blue Text</font>   
    <font size="4">Size 4 text</font>   <font size='2'>Size 2 text
    
2. <font size = '4'>Title </font>  
    # first level title
    ## second level title
    ### third level title


3. <font size = '4'>Eternal Links </font>
    - if you would like to only refer to this address once    
    Link to the reference blog [reference blog](https://yuhongjun.github.io/tech/2017/05/02/Markdown-%E8%AF%AD%E6%B3%95%E6%89%8B%E5%86%8C-%E5%AE%8C%E6%95%B4%E6%95%B4%E7%90%86%E7%89%88.html)    
    You can even add annotation to the address[reference blog](https://yuhongjun.github.io/tech/2017/05/02/Markdown-%E8%AF%AD%E6%B3%95%E6%89%8B%E5%86%8C-%E5%AE%8C%E6%95%B4%E6%95%B4%E7%90%86%E7%89%88.html "my anotation")
           
    - if you would like to refer to this address multiple times throughout the notebook    
    I would like to visit these pages frequenctly [google][1], [baidu][2], [scihub][3]. 
              
    - direct to an email address   
    <xaviera417@126.com>
        
[1]:https://www.google.com
[2]:https://www.baidu.com
[3]:https://sci-hub.se

<font size = '4'>4. Code insertion </font>

This is a normal paragraph followed by code demonstration, if you want syntax highlight :

```Python
str = "This is block level code"
print(str)
```

Another way to insert the code block:

<code>Python
str = "This is a block level code"
print(str)
</code>

5.  <font size = '4'>Lists without enumeration </font> 
    -   <font size = '3'>Bullet Points Only </font> 
        *    Shall I compare thee to a summer’s day? Thou art more lovely and more temperate: Rough winds do shake the darling buds of             May, And summer’s lease hath all too short a date; Sometime too hot the eye of heaven shines, And often is his gold                 complexion dimm'd; And every fair from fair sometime declines, By chance or nature’s changing course untrimm'd;But thy               eternal summer shall not fade,Nor lose possession of that fair thou ow’st;Nor shall death brag thou wander’st in his               shade,
        *   When in eternal lines to time thou grow’st:So long as men can breathe or eyes can see, So long lives this, and this gives             life to thee.
        
    -   <font size = '3'>Bullet Points with multiple paragraphs</font> 
        *    Shall I compare thee to a summer’s day? Thou art more lovely and more temperate: Rough winds do shake the darling buds of             May, And summer’s lease hath all too short a date; 
        
            Sometime too hot the eye of heaven shines, And often is his gold complexion dimm'd; And every fair from fair sometime                 declines, By chance or nature’s changing course untrimm'd;But thy eternal summer shall not fade,Nor lose possession of               that fair thou ow’st;Nor shall death brag thou wander’st in his shade,
            
        *   When in eternal lines to time thou grow’st:So long as men can breathe or eyes can see, So long lives this, and this gives             life to thee.
       

6. <font size = '4'>Reference in-between lists </font> 
    *   which one is a better companion for workdays?
        > coffee    
        > tea

7. <font size = '4'>If you have to use period after a number at the beginning of the sentence </font>  
  
   > 1986\. What a great season.  
   > (wihtout the '\' before the period, you will end up getting a list)

8. <font size = '4'>Mathemetical Symbol</font>  
$\sqrt{k}$

9. <font size = '4'>Table</font> 

Name|Address|Salary 
-----|-------|------ 
Hanna|Brisbane|4000 
Adam|Sydney|5000

10. <font size = '4'> Image </font>  
![view](https://yuhongjun.github.io/assets/media/scenery.jpeg "美丽风景")

<div class="alert alert-block alert-info">
<b>Tip:</b> Use blue boxes (alert-info) for tips and notes. 
If it’s a note, you don’t have to include the word “Note”.
</div>


<div class="alert alert-block alert-warning">
<b>Example:</b> Use yellow boxes for examples that are not 
inside code cells, or use for mathematical formulas if needed.
</div>

<div class="alert alert-block alert-success">
<b>Up to you:</b> Use green boxes sparingly, and only for some specific 
purpose that the other boxes can't cover. For example, if you have a lot 
of related content to link to, maybe you decide to use green boxes for 
related links from each section of a notebook.
</div>

<div class="alert alert-block alert-danger">
<b>Just don't:</b> In general, avoid the red boxes. These should only be
used for actions that might cause data loss or another major issue.
</div>




```python

```
