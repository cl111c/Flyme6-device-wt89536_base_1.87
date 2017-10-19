.class public Lcom/android/server/policy/BlurUtils;
.super Ljava/lang/Object;
.source "BlurUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Blur"

.field private static sRS:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 293
    if-nez p0, :cond_0

    .line 294
    const/4 v2, 0x0

    .line 299
    :goto_0
    return-object v2

    .line 297
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 298
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 299
    .local v0, "height":I
    invoke-static {p0, v1, v0}, Lcom/android/server/policy/BlurUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 303
    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    if-gtz p2, :cond_2

    .line 304
    :cond_0
    const/4 v0, 0x0

    .line 324
    :cond_1
    :goto_0
    return-object v0

    .line 307
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 310
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    :goto_1
    const/4 v0, 0x0

    .line 312
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_1

    .line 315
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 316
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 317
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 319
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v3

    .line 320
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 307
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "config":Landroid/graphics/Bitmap$Config;
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    :cond_3
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    .line 321
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "config":Landroid/graphics/Bitmap$Config;
    :catch_1
    move-exception v3

    .line 322
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static fastBlur(Landroid/content/Context;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I
    .param p3, "canReuseInBitmap"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 289
    const/4 v0, 0x4

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/policy/BlurUtils;->fastBlur(Landroid/content/Context;Landroid/graphics/Bitmap;IZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static fastBlur(Landroid/content/Context;Landroid/graphics/Bitmap;IZI)Landroid/graphics/Bitmap;
    .locals 49
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I
    .param p3, "canReuseInBitmap"    # Z
    .param p4, "scaleFactor"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 34
    if-gtz p4, :cond_0

    .line 35
    const/16 p4, 0x1

    .line 38
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    .line 39
    .local v26, "originalW":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    .line 41
    .local v25, "originalH":I
    move-object/from16 v35, p1

    .line 42
    .local v35, "scaledBmp":Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    move/from16 v0, p4

    if-eq v0, v4, :cond_1

    .line 43
    div-int v4, v26, p4

    div-int v6, v25, p4

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v35

    .line 46
    :cond_1
    move-object/from16 v0, v35

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_2

    .line 47
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 50
    :cond_2
    move-object/from16 p1, v35

    .line 52
    const/4 v2, 0x0

    .line 53
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_6

    .line 54
    move-object/from16 v2, v35

    .line 59
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-le v4, v6, :cond_7

    .line 60
    sget-object v4, Lcom/android/server/policy/BlurUtils;->sRS:Landroid/renderscript/RenderScript;

    if-nez v4, :cond_3

    .line 61
    invoke-static/range {p0 .. p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v4

    sput-object v4, Lcom/android/server/policy/BlurUtils;->sRS:Landroid/renderscript/RenderScript;

    .line 63
    :cond_3
    sget-object v4, Lcom/android/server/policy/BlurUtils;->sRS:Landroid/renderscript/RenderScript;

    sget-object v6, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v7, 0x1

    move-object/from16 v0, v35

    invoke-static {v4, v0, v6, v7}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v24

    .line 66
    .local v24, "input":Landroid/renderscript/Allocation;
    sget-object v4, Lcom/android/server/policy/BlurUtils;->sRS:Landroid/renderscript/RenderScript;

    invoke-virtual/range {v24 .. v24}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v27

    .line 67
    .local v27, "output":Landroid/renderscript/Allocation;
    sget-object v4, Lcom/android/server/policy/BlurUtils;->sRS:Landroid/renderscript/RenderScript;

    sget-object v6, Lcom/android/server/policy/BlurUtils;->sRS:Landroid/renderscript/RenderScript;

    invoke-static {v6}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v36

    .line 68
    .local v36, "script":Landroid/renderscript/ScriptIntrinsicBlur;
    move/from16 v0, p2

    int-to-float v4, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 69
    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 70
    move-object/from16 v0, v36

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 71
    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 73
    const/4 v4, 0x0

    move/from16 v0, v26

    move/from16 v1, v25

    invoke-static {v2, v0, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 74
    .local v17, "finalBmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, v17

    if-eq v0, v2, :cond_4

    .line 75
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 78
    :cond_4
    invoke-virtual/range {v24 .. v24}, Landroid/renderscript/Allocation;->destroy()V

    .line 79
    invoke-virtual/range {v27 .. v27}, Landroid/renderscript/Allocation;->destroy()V

    .line 80
    invoke-virtual/range {v36 .. v36}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 284
    .end local v17    # "finalBmp":Landroid/graphics/Bitmap;
    .end local v24    # "input":Landroid/renderscript/Allocation;
    .end local v27    # "output":Landroid/renderscript/Allocation;
    .end local v36    # "script":Landroid/renderscript/ScriptIntrinsicBlur;
    :cond_5
    :goto_1
    return-object v17

    .line 56
    :cond_6
    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 84
    :cond_7
    const/4 v4, 0x1

    move/from16 v0, p2

    if-ge v0, v4, :cond_8

    .line 85
    const/16 v17, 0x0

    goto :goto_1

    .line 88
    :cond_8
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 89
    .local v5, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 91
    .local v9, "h":I
    mul-int v4, v5, v9

    new-array v3, v4, [I

    .line 92
    .local v3, "pix":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 94
    add-int/lit8 v43, v5, -0x1

    .line 95
    .local v43, "wm":I
    add-int/lit8 v22, v9, -0x1

    .line 96
    .local v22, "hm":I
    mul-int v42, v5, v9

    .line 97
    .local v42, "wh":I
    add-int v4, p2, p2

    add-int/lit8 v14, v4, 0x1

    .line 99
    .local v14, "div":I
    move/from16 v0, v42

    new-array v0, v0, [I

    move-object/from16 v29, v0

    .line 100
    .local v29, "r":[I
    move/from16 v0, v42

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 101
    .local v18, "g":[I
    move/from16 v0, v42

    new-array v10, v0, [I

    .line 103
    .local v10, "b":[I
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v41, v0

    .line 105
    .local v41, "vmin":[I
    add-int/lit8 v4, v14, 0x1

    shr-int/lit8 v15, v4, 0x1

    .line 106
    .local v15, "divsum":I
    mul-int/2addr v15, v15

    .line 107
    mul-int/lit16 v4, v15, 0x100

    new-array v0, v4, [I

    move-object/from16 v16, v0

    .line 108
    .local v16, "dv":[I
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_2
    mul-int/lit16 v4, v15, 0x100

    move/from16 v0, v23

    if-ge v0, v4, :cond_9

    .line 109
    div-int v4, v23, v15

    aput v4, v16, v23

    .line 108
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 112
    :cond_9
    const/16 v46, 0x0

    .local v46, "yi":I
    move/from16 v48, v46

    .line 114
    .local v48, "yw":I
    const/4 v4, 0x3

    filled-new-array {v14, v4}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, [[I

    .line 119
    .local v38, "stack":[[I
    add-int/lit8 v30, p2, 0x1

    .line 123
    .local v30, "r1":I
    const/16 v45, 0x0

    .local v45, "y":I
    :goto_3
    move/from16 v0, v45

    if-ge v0, v9, :cond_e

    .line 124
    const/4 v13, 0x0

    .local v13, "bsum":I
    move/from16 v21, v13

    .local v21, "gsum":I
    move/from16 v34, v13

    .local v34, "rsum":I
    move v12, v13

    .local v12, "boutsum":I
    move/from16 v20, v13

    .local v20, "goutsum":I
    move/from16 v33, v13

    .local v33, "routsum":I
    move v11, v13

    .local v11, "binsum":I
    move/from16 v19, v13

    .local v19, "ginsum":I
    move/from16 v32, v13

    .line 125
    .local v32, "rinsum":I
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v23, v0

    :goto_4
    move/from16 v0, v23

    move/from16 v1, p2

    if-gt v0, v1, :cond_b

    .line 126
    const/4 v4, 0x0

    move/from16 v0, v23

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v0, v43

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v46

    aget v28, v3, v4

    .line 127
    .local v28, "p":I
    add-int v4, v23, p2

    aget-object v37, v38, v4

    .line 128
    .local v37, "sir":[I
    const/4 v4, 0x0

    const/high16 v6, 0xff0000

    and-int v6, v6, v28

    shr-int/lit8 v6, v6, 0x10

    aput v6, v37, v4

    .line 129
    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v28

    shr-int/lit8 v6, v6, 0x8

    aput v6, v37, v4

    .line 130
    const/4 v4, 0x2

    move/from16 v0, v28

    and-int/lit16 v6, v0, 0xff

    aput v6, v37, v4

    .line 131
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v31, v30, v4

    .line 132
    .local v31, "rbs":I
    const/4 v4, 0x0

    aget v4, v37, v4

    mul-int v4, v4, v31

    add-int v34, v34, v4

    .line 133
    const/4 v4, 0x1

    aget v4, v37, v4

    mul-int v4, v4, v31

    add-int v21, v21, v4

    .line 134
    const/4 v4, 0x2

    aget v4, v37, v4

    mul-int v4, v4, v31

    add-int/2addr v13, v4

    .line 135
    if-lez v23, :cond_a

    .line 136
    const/4 v4, 0x0

    aget v4, v37, v4

    add-int v32, v32, v4

    .line 137
    const/4 v4, 0x1

    aget v4, v37, v4

    add-int v19, v19, v4

    .line 138
    const/4 v4, 0x2

    aget v4, v37, v4

    add-int/2addr v11, v4

    .line 125
    :goto_5
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    .line 140
    :cond_a
    const/4 v4, 0x0

    aget v4, v37, v4

    add-int v33, v33, v4

    .line 141
    const/4 v4, 0x1

    aget v4, v37, v4

    add-int v20, v20, v4

    .line 142
    const/4 v4, 0x2

    aget v4, v37, v4

    add-int/2addr v12, v4

    goto :goto_5

    .line 145
    .end local v28    # "p":I
    .end local v31    # "rbs":I
    .end local v37    # "sir":[I
    :cond_b
    move/from16 v39, p2

    .line 147
    .local v39, "stackpointer":I
    const/16 v44, 0x0

    .local v44, "x":I
    :goto_6
    move/from16 v0, v44

    if-ge v0, v5, :cond_d

    .line 149
    aget v4, v16, v34

    aput v4, v29, v46

    .line 150
    aget v4, v16, v21

    aput v4, v18, v46

    .line 151
    aget v4, v16, v13

    aput v4, v10, v46

    .line 153
    sub-int v34, v34, v33

    .line 154
    sub-int v21, v21, v20

    .line 155
    sub-int/2addr v13, v12

    .line 157
    sub-int v4, v39, p2

    add-int v40, v4, v14

    .line 158
    .local v40, "stackstart":I
    rem-int v4, v40, v14

    aget-object v37, v38, v4

    .line 160
    .restart local v37    # "sir":[I
    const/4 v4, 0x0

    aget v4, v37, v4

    sub-int v33, v33, v4

    .line 161
    const/4 v4, 0x1

    aget v4, v37, v4

    sub-int v20, v20, v4

    .line 162
    const/4 v4, 0x2

    aget v4, v37, v4

    sub-int/2addr v12, v4

    .line 164
    if-nez v45, :cond_c

    .line 165
    add-int v4, v44, p2

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v43

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v41, v44

    .line 167
    :cond_c
    aget v4, v41, v44

    add-int v4, v4, v48

    aget v28, v3, v4

    .line 169
    .restart local v28    # "p":I
    const/4 v4, 0x0

    const/high16 v6, 0xff0000

    and-int v6, v6, v28

    shr-int/lit8 v6, v6, 0x10

    aput v6, v37, v4

    .line 170
    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v28

    shr-int/lit8 v6, v6, 0x8

    aput v6, v37, v4

    .line 171
    const/4 v4, 0x2

    move/from16 v0, v28

    and-int/lit16 v6, v0, 0xff

    aput v6, v37, v4

    .line 173
    const/4 v4, 0x0

    aget v4, v37, v4

    add-int v32, v32, v4

    .line 174
    const/4 v4, 0x1

    aget v4, v37, v4

    add-int v19, v19, v4

    .line 175
    const/4 v4, 0x2

    aget v4, v37, v4

    add-int/2addr v11, v4

    .line 177
    add-int v34, v34, v32

    .line 178
    add-int v21, v21, v19

    .line 179
    add-int/2addr v13, v11

    .line 181
    add-int/lit8 v4, v39, 0x1

    rem-int v39, v4, v14

    .line 182
    rem-int v4, v39, v14

    aget-object v37, v38, v4

    .line 184
    const/4 v4, 0x0

    aget v4, v37, v4

    add-int v33, v33, v4

    .line 185
    const/4 v4, 0x1

    aget v4, v37, v4

    add-int v20, v20, v4

    .line 186
    const/4 v4, 0x2

    aget v4, v37, v4

    add-int/2addr v12, v4

    .line 188
    const/4 v4, 0x0

    aget v4, v37, v4

    sub-int v32, v32, v4

    .line 189
    const/4 v4, 0x1

    aget v4, v37, v4

    sub-int v19, v19, v4

    .line 190
    const/4 v4, 0x2

    aget v4, v37, v4

    sub-int/2addr v11, v4

    .line 192
    add-int/lit8 v46, v46, 0x1

    .line 147
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_6

    .line 194
    .end local v28    # "p":I
    .end local v37    # "sir":[I
    .end local v40    # "stackstart":I
    :cond_d
    add-int v48, v48, v5

    .line 123
    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_3

    .line 196
    .end local v11    # "binsum":I
    .end local v12    # "boutsum":I
    .end local v13    # "bsum":I
    .end local v19    # "ginsum":I
    .end local v20    # "goutsum":I
    .end local v21    # "gsum":I
    .end local v32    # "rinsum":I
    .end local v33    # "routsum":I
    .end local v34    # "rsum":I
    .end local v39    # "stackpointer":I
    .end local v44    # "x":I
    :cond_e
    const/16 v44, 0x0

    .restart local v44    # "x":I
    :goto_7
    move/from16 v0, v44

    if-ge v0, v5, :cond_14

    .line 197
    const/4 v13, 0x0

    .restart local v13    # "bsum":I
    move/from16 v21, v13

    .restart local v21    # "gsum":I
    move/from16 v34, v13

    .restart local v34    # "rsum":I
    move v12, v13

    .restart local v12    # "boutsum":I
    move/from16 v20, v13

    .restart local v20    # "goutsum":I
    move/from16 v33, v13

    .restart local v33    # "routsum":I
    move v11, v13

    .restart local v11    # "binsum":I
    move/from16 v19, v13

    .restart local v19    # "ginsum":I
    move/from16 v32, v13

    .line 198
    .restart local v32    # "rinsum":I
    move/from16 v0, p2

    neg-int v4, v0

    mul-int v47, v4, v5

    .line 199
    .local v47, "yp":I
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v23, v0

    :goto_8
    move/from16 v0, v23

    move/from16 v1, p2

    if-gt v0, v1, :cond_11

    .line 200
    const/4 v4, 0x0

    move/from16 v0, v47

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v46, v4, v44

    .line 202
    add-int v4, v23, p2

    aget-object v37, v38, v4

    .line 204
    .restart local v37    # "sir":[I
    const/4 v4, 0x0

    aget v6, v29, v46

    aput v6, v37, v4

    .line 205
    const/4 v4, 0x1

    aget v6, v18, v46

    aput v6, v37, v4

    .line 206
    const/4 v4, 0x2

    aget v6, v10, v46

    aput v6, v37, v4

    .line 208
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v31, v30, v4

    .line 210
    .restart local v31    # "rbs":I
    aget v4, v29, v46

    mul-int v4, v4, v31

    add-int v34, v34, v4

    .line 211
    aget v4, v18, v46

    mul-int v4, v4, v31

    add-int v21, v21, v4

    .line 212
    aget v4, v10, v46

    mul-int v4, v4, v31

    add-int/2addr v13, v4

    .line 214
    if-lez v23, :cond_10

    .line 215
    const/4 v4, 0x0

    aget v4, v37, v4

    add-int v32, v32, v4

    .line 216
    const/4 v4, 0x1

    aget v4, v37, v4

    add-int v19, v19, v4

    .line 217
    const/4 v4, 0x2

    aget v4, v37, v4

    add-int/2addr v11, v4

    .line 224
    :goto_9
    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_f

    .line 225
    add-int v47, v47, v5

    .line 199
    :cond_f
    add-int/lit8 v23, v23, 0x1

    goto :goto_8

    .line 219
    :cond_10
    const/4 v4, 0x0

    aget v4, v37, v4

    add-int v33, v33, v4

    .line 220
    const/4 v4, 0x1

    aget v4, v37, v4

    add-int v20, v20, v4

    .line 221
    const/4 v4, 0x2

    aget v4, v37, v4

    add-int/2addr v12, v4

    goto :goto_9

    .line 228
    .end local v31    # "rbs":I
    .end local v37    # "sir":[I
    :cond_11
    move/from16 v46, v44

    .line 229
    move/from16 v39, p2

    .line 230
    .restart local v39    # "stackpointer":I
    const/16 v45, 0x0

    :goto_a
    move/from16 v0, v45

    if-ge v0, v9, :cond_13

    .line 232
    const/high16 v4, -0x1000000

    aget v6, v3, v46

    and-int/2addr v4, v6

    aget v6, v16, v34

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    aget v6, v16, v21

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    aget v6, v16, v13

    or-int/2addr v4, v6

    aput v4, v3, v46

    .line 235
    sub-int v34, v34, v33

    .line 236
    sub-int v21, v21, v20

    .line 237
    sub-int/2addr v13, v12

    .line 239
    sub-int v4, v39, p2

    add-int v40, v4, v14

    .line 240
    .restart local v40    # "stackstart":I
    rem-int v4, v40, v14

    aget-object v37, v38, v4

    .line 242
    .restart local v37    # "sir":[I
    const/4 v4, 0x0

    aget v4, v37, v4

    sub-int v33, v33, v4

    .line 243
    const/4 v4, 0x1

    aget v4, v37, v4

    sub-int v20, v20, v4

    .line 244
    const/4 v4, 0x2

    aget v4, v37, v4

    sub-int/2addr v12, v4

    .line 246
    if-nez v44, :cond_12

    .line 247
    add-int v4, v45, v30

    move/from16 v0, v22

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/2addr v4, v5

    aput v4, v41, v45

    .line 249
    :cond_12
    aget v4, v41, v45

    add-int v28, v44, v4

    .line 251
    .restart local v28    # "p":I
    const/4 v4, 0x0

    aget v6, v29, v28

    aput v6, v37, v4

    .line 252
    const/4 v4, 0x1

    aget v6, v18, v28

    aput v6, v37, v4

    .line 253
    const/4 v4, 0x2

    aget v6, v10, v28

    aput v6, v37, v4

    .line 255
    const/4 v4, 0x0

    aget v4, v37, v4

    add-int v32, v32, v4

    .line 256
    const/4 v4, 0x1

    aget v4, v37, v4

    add-int v19, v19, v4

    .line 257
    const/4 v4, 0x2

    aget v4, v37, v4

    add-int/2addr v11, v4

    .line 259
    add-int v34, v34, v32

    .line 260
    add-int v21, v21, v19

    .line 261
    add-int/2addr v13, v11

    .line 263
    add-int/lit8 v4, v39, 0x1

    rem-int v39, v4, v14

    .line 264
    aget-object v37, v38, v39

    .line 266
    const/4 v4, 0x0

    aget v4, v37, v4

    add-int v33, v33, v4

    .line 267
    const/4 v4, 0x1

    aget v4, v37, v4

    add-int v20, v20, v4

    .line 268
    const/4 v4, 0x2

    aget v4, v37, v4

    add-int/2addr v12, v4

    .line 270
    const/4 v4, 0x0

    aget v4, v37, v4

    sub-int v32, v32, v4

    .line 271
    const/4 v4, 0x1

    aget v4, v37, v4

    sub-int v19, v19, v4

    .line 272
    const/4 v4, 0x2

    aget v4, v37, v4

    sub-int/2addr v11, v4

    .line 274
    add-int v46, v46, v5

    .line 230
    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_a

    .line 196
    .end local v28    # "p":I
    .end local v37    # "sir":[I
    .end local v40    # "stackstart":I
    :cond_13
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_7

    .line 278
    .end local v11    # "binsum":I
    .end local v12    # "boutsum":I
    .end local v13    # "bsum":I
    .end local v19    # "ginsum":I
    .end local v20    # "goutsum":I
    .end local v21    # "gsum":I
    .end local v32    # "rinsum":I
    .end local v33    # "routsum":I
    .end local v34    # "rsum":I
    .end local v39    # "stackpointer":I
    .end local v47    # "yp":I
    :cond_14
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 279
    const/4 v4, 0x0

    move/from16 v0, v26

    move/from16 v1, v25

    invoke-static {v2, v0, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 280
    .restart local v17    # "finalBmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, v17

    if-eq v0, v2, :cond_5

    .line 281
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_1
.end method
