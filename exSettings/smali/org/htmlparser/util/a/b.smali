.class public final Lorg/htmlparser/util/a/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lorg/htmlparser/util/a/c;Lorg/htmlparser/util/a/a;)I
    .locals 9

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-interface {p0}, Lorg/htmlparser/util/a/c;->a()I

    move-result v2

    add-int/lit8 v0, v2, 0x0

    add-int/lit8 v1, v0, 0x1

    const/4 v0, 0x0

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v2, v3

    move v3, v4

    :goto_0
    if-ne v4, v3, :cond_4

    if-gt v2, v7, :cond_4

    div-int/lit8 v1, v6, 0x2

    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    invoke-interface {p0, v0, v5}, Lorg/htmlparser/util/a/c;->a(ILorg/htmlparser/util/a/a;)Lorg/htmlparser/util/a/a;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/htmlparser/util/a/a;->a(Ljava/lang/Object;)I

    move-result v8

    if-nez v8, :cond_1

    move v3, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    goto :goto_1

    :cond_1
    if-gez v8, :cond_3

    add-int/lit8 v0, v0, -0x1

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    :goto_2
    move v6, v1

    move v7, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v0, 0x1

    move v6, v1

    goto :goto_0

    :cond_4
    if-ne v4, v3, :cond_5

    move v0, v2

    :goto_3
    return v0

    :cond_5
    move v0, v3

    goto :goto_3
.end method
