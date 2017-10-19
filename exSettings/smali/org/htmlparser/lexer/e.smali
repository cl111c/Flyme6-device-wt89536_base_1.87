.class public final Lorg/htmlparser/lexer/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/htmlparser/util/a/c;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:[I

.field protected d:Lorg/htmlparser/lexer/c;


# direct methods
.method public constructor <init>(Lorg/htmlparser/lexer/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/htmlparser/lexer/e;->d:Lorg/htmlparser/lexer/c;

    iget v0, p0, Lorg/htmlparser/lexer/e;->a:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/htmlparser/lexer/e;->c:[I

    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlparser/lexer/e;->b:I

    const/16 v0, 0xc8

    iput v0, p0, Lorg/htmlparser/lexer/e;->a:I

    return-void
.end method

.method private a(II)V
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/htmlparser/lexer/e;->c:[I

    array-length v0, v0

    if-ge p2, v0, :cond_0

    iget v0, p0, Lorg/htmlparser/lexer/e;->b:I

    iget-object v1, p0, Lorg/htmlparser/lexer/e;->c:[I

    array-length v1, v1

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lorg/htmlparser/lexer/e;->c:[I

    array-length v0, v0

    iget v1, p0, Lorg/htmlparser/lexer/e;->a:I

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    iget v1, p0, Lorg/htmlparser/lexer/e;->a:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/htmlparser/lexer/e;->a:I

    iget-object v1, p0, Lorg/htmlparser/lexer/e;->c:[I

    array-length v1, v1

    if-ge p2, v1, :cond_2

    iget-object v1, p0, Lorg/htmlparser/lexer/e;->c:[I

    invoke-static {v1, v3, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/htmlparser/lexer/e;->c:[I

    add-int/lit8 v2, p2, 0x1

    iget-object v3, p0, Lorg/htmlparser/lexer/e;->c:[I

    array-length v3, v3

    sub-int/2addr v3, p2

    invoke-static {v1, p2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iput-object v0, p0, Lorg/htmlparser/lexer/e;->c:[I

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/htmlparser/lexer/e;->c:[I

    aput p1, v0, p2

    iget v0, p0, Lorg/htmlparser/lexer/e;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/htmlparser/lexer/e;->b:I

    return-void

    :cond_2
    iget-object v1, p0, Lorg/htmlparser/lexer/e;->c:[I

    iget-object v2, p0, Lorg/htmlparser/lexer/e;->c:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/htmlparser/lexer/e;->b:I

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lorg/htmlparser/lexer/e;->c:[I

    iget-object v1, p0, Lorg/htmlparser/lexer/e;->c:[I

    add-int/lit8 v2, p2, 0x1

    iget-object v3, p0, Lorg/htmlparser/lexer/e;->c:[I

    array-length v3, v3

    add-int/lit8 v4, p2, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, p2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lorg/htmlparser/lexer/e;->b:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final a(I)I
    .locals 3

    iget v0, p0, Lorg/htmlparser/lexer/e;->b:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " beyond current limit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/htmlparser/lexer/e;->c:[I

    aget v0, v0, p1

    return v0
.end method

.method public final a(Lorg/htmlparser/lexer/a;)I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/htmlparser/lexer/a;->a()I

    move-result v1

    iget v2, p0, Lorg/htmlparser/lexer/e;->b:I

    if-nez v2, :cond_1

    invoke-direct {p0, v1, v0}, Lorg/htmlparser/lexer/e;->a(II)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/htmlparser/lexer/e;->c:[I

    iget v2, p0, Lorg/htmlparser/lexer/e;->b:I

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    if-ne v1, v0, :cond_2

    iget v0, p0, Lorg/htmlparser/lexer/e;->b:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    if-le v1, v0, :cond_4

    iget v0, p0, Lorg/htmlparser/lexer/e;->b:I

    :cond_3
    :goto_1
    invoke-direct {p0, v1, v0}, Lorg/htmlparser/lexer/e;->a(II)V

    goto :goto_0

    :cond_4
    invoke-static {p0, p1}, Lorg/htmlparser/util/a/b;->a(Lorg/htmlparser/util/a/c;Lorg/htmlparser/util/a/a;)I

    move-result v0

    iget v2, p0, Lorg/htmlparser/lexer/e;->b:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lorg/htmlparser/lexer/e;->c:[I

    aget v2, v2, v0

    if-eq v1, v2, :cond_0

    goto :goto_1
.end method

.method public final a(ILorg/htmlparser/util/a/a;)Lorg/htmlparser/util/a/a;
    .locals 2

    if-eqz p2, :cond_0

    check-cast p2, Lorg/htmlparser/lexer/a;

    iget-object v0, p0, Lorg/htmlparser/lexer/e;->c:[I

    aget v0, v0, p1

    iput v0, p2, Lorg/htmlparser/lexer/a;->a:I

    iget-object v0, p0, Lorg/htmlparser/lexer/e;->d:Lorg/htmlparser/lexer/c;

    iput-object v0, p2, Lorg/htmlparser/lexer/a;->b:Lorg/htmlparser/lexer/c;

    :goto_0
    return-object p2

    :cond_0
    new-instance p2, Lorg/htmlparser/lexer/a;

    iget-object v0, p0, Lorg/htmlparser/lexer/e;->d:Lorg/htmlparser/lexer/c;

    iget-object v1, p0, Lorg/htmlparser/lexer/e;->c:[I

    aget v1, v1, p1

    invoke-direct {p2, v0, v1}, Lorg/htmlparser/lexer/a;-><init>(Lorg/htmlparser/lexer/c;I)V

    goto :goto_0
.end method

.method public final b(Lorg/htmlparser/lexer/a;)I
    .locals 3

    invoke-static {p0, p1}, Lorg/htmlparser/util/a/b;->a(Lorg/htmlparser/util/a/c;Lorg/htmlparser/util/a/a;)I

    move-result v0

    iget v1, p0, Lorg/htmlparser/lexer/e;->b:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/htmlparser/lexer/a;->a()I

    move-result v1

    iget-object v2, p0, Lorg/htmlparser/lexer/e;->c:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method
