.class public final Lorg/htmlparser/lexer/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/htmlparser/util/a/a;


# instance fields
.field protected a:I

.field protected b:Lorg/htmlparser/lexer/c;


# direct methods
.method public constructor <init>(Lorg/htmlparser/lexer/c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/htmlparser/lexer/a;->b:Lorg/htmlparser/lexer/c;

    iput p2, p0, Lorg/htmlparser/lexer/a;->a:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lorg/htmlparser/lexer/a;->a:I

    return v0
.end method

.method public final a(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lorg/htmlparser/lexer/a;

    iget v0, p0, Lorg/htmlparser/lexer/a;->a:I

    iget v1, p1, Lorg/htmlparser/lexer/a;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lorg/htmlparser/lexer/a;->a:I

    return-void
.end method

.method public final b()V
    .locals 1

    iget v0, p0, Lorg/htmlparser/lexer/a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/htmlparser/lexer/a;->a:I

    return-void
.end method

.method public final c()V
    .locals 1

    iget v0, p0, Lorg/htmlparser/lexer/a;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/htmlparser/lexer/a;->a:I

    iget v0, p0, Lorg/htmlparser/lexer/a;->a:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlparser/lexer/a;->a:I

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget v1, p0, Lorg/htmlparser/lexer/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/htmlparser/lexer/a;->b:Lorg/htmlparser/lexer/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/htmlparser/lexer/a;->b:Lorg/htmlparser/lexer/c;

    invoke-virtual {v1, p0}, Lorg/htmlparser/lexer/c;->c(Lorg/htmlparser/lexer/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :goto_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/htmlparser/lexer/a;->b:Lorg/htmlparser/lexer/c;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/htmlparser/lexer/a;->b:Lorg/htmlparser/lexer/c;

    invoke-virtual {v1, p0}, Lorg/htmlparser/lexer/c;->d(Lorg/htmlparser/lexer/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :goto_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
