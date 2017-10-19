.class public final Lorg/htmlparser/util/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:[Lorg/htmlparser/b;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlparser/util/h;->b:I

    const/16 v0, 0xa

    iput v0, p0, Lorg/htmlparser/util/h;->c:I

    iget v0, p0, Lorg/htmlparser/util/h;->c:I

    new-array v0, v0, [Lorg/htmlparser/b;

    iput-object v0, p0, Lorg/htmlparser/util/h;->a:[Lorg/htmlparser/b;

    iget v0, p0, Lorg/htmlparser/util/h;->c:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/htmlparser/util/h;->d:I

    return-void
.end method

.method public constructor <init>(Lorg/htmlparser/b;)V
    .locals 0

    invoke-direct {p0}, Lorg/htmlparser/util/h;-><init>()V

    invoke-virtual {p0, p1}, Lorg/htmlparser/util/h;->a(Lorg/htmlparser/b;)V

    return-void
.end method

.method static a(Lorg/htmlparser/util/h;)I
    .locals 1

    iget v0, p0, Lorg/htmlparser/util/h;->b:I

    return v0
.end method

.method static b(Lorg/htmlparser/util/h;)[Lorg/htmlparser/b;
    .locals 1

    iget-object v0, p0, Lorg/htmlparser/util/h;->a:[Lorg/htmlparser/b;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lorg/htmlparser/util/h;->b:I

    return v0
.end method

.method public final a(I)Lorg/htmlparser/b;
    .locals 1

    iget-object v0, p0, Lorg/htmlparser/util/h;->a:[Lorg/htmlparser/b;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a(Lorg/htmlparser/d;Z)Lorg/htmlparser/util/h;
    .locals 6

    const/4 v1, 0x0

    new-instance v3, Lorg/htmlparser/util/h;

    invoke-direct {v3}, Lorg/htmlparser/util/h;-><init>()V

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/htmlparser/util/h;->b:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/htmlparser/util/h;->a:[Lorg/htmlparser/b;

    aget-object v2, v2, v0

    invoke-interface {p1, v2}, Lorg/htmlparser/d;->a(Lorg/htmlparser/b;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Lorg/htmlparser/util/h;->a(Lorg/htmlparser/b;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {v2}, Lorg/htmlparser/b;->e()Lorg/htmlparser/util/h;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, p2}, Lorg/htmlparser/util/h;->a(Lorg/htmlparser/d;Z)Lorg/htmlparser/util/h;

    move-result-object v4

    move v2, v1

    :goto_1
    iget v5, v4, Lorg/htmlparser/util/h;->b:I

    if-ge v2, v5, :cond_1

    iget-object v5, v4, Lorg/htmlparser/util/h;->a:[Lorg/htmlparser/b;

    aget-object v5, v5, v2

    invoke-virtual {v3, v5}, Lorg/htmlparser/util/h;->a(Lorg/htmlparser/b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public final a(Lorg/htmlparser/b;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lorg/htmlparser/util/h;->b:I

    iget v1, p0, Lorg/htmlparser/util/h;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/htmlparser/util/h;->c:I

    iget v1, p0, Lorg/htmlparser/util/h;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/htmlparser/util/h;->c:I

    iget v0, p0, Lorg/htmlparser/util/h;->d:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/htmlparser/util/h;->d:I

    iget-object v0, p0, Lorg/htmlparser/util/h;->a:[Lorg/htmlparser/b;

    iget v1, p0, Lorg/htmlparser/util/h;->c:I

    new-array v1, v1, [Lorg/htmlparser/b;

    iput-object v1, p0, Lorg/htmlparser/util/h;->a:[Lorg/htmlparser/b;

    iget-object v1, p0, Lorg/htmlparser/util/h;->a:[Lorg/htmlparser/b;

    iget v2, p0, Lorg/htmlparser/util/h;->b:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/htmlparser/util/h;->a:[Lorg/htmlparser/b;

    iget v1, p0, Lorg/htmlparser/util/h;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/htmlparser/util/h;->b:I

    aput-object p1, v0, v1

    return-void
.end method

.method public final b(I)Lorg/htmlparser/b;
    .locals 5

    iget-object v0, p0, Lorg/htmlparser/util/h;->a:[Lorg/htmlparser/b;

    aget-object v0, v0, p1

    iget-object v1, p0, Lorg/htmlparser/util/h;->a:[Lorg/htmlparser/b;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lorg/htmlparser/util/h;->a:[Lorg/htmlparser/b;

    iget v4, p0, Lorg/htmlparser/util/h;->b:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/htmlparser/util/h;->a:[Lorg/htmlparser/b;

    iget v2, p0, Lorg/htmlparser/util/h;->b:I

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    iget v1, p0, Lorg/htmlparser/util/h;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/htmlparser/util/h;->b:I

    return-object v0
.end method

.method public final b()Lorg/htmlparser/util/m;
    .locals 1

    new-instance v0, Lorg/htmlparser/util/i;

    invoke-direct {v0, p0}, Lorg/htmlparser/util/i;-><init>(Lorg/htmlparser/util/h;)V

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/htmlparser/util/h;->b:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/htmlparser/util/h;->a:[Lorg/htmlparser/b;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lorg/htmlparser/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/htmlparser/util/h;->b:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/htmlparser/util/h;->a:[Lorg/htmlparser/b;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
