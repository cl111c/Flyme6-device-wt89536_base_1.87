.class public final Lorg/htmlparser/lexer/d;
.super Lorg/htmlparser/a;


# instance fields
.field protected e:Lorg/htmlparser/lexer/c;

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Lorg/htmlparser/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlparser/lexer/d;->e:Lorg/htmlparser/lexer/c;

    iput v1, p0, Lorg/htmlparser/lexer/d;->f:I

    iput v1, p0, Lorg/htmlparser/lexer/d;->g:I

    iput v1, p0, Lorg/htmlparser/lexer/d;->h:I

    iput v1, p0, Lorg/htmlparser/lexer/d;->i:I

    return-void
.end method

.method public constructor <init>(Lorg/htmlparser/lexer/c;IIIIC)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/htmlparser/a;-><init>()V

    iput-object p1, p0, Lorg/htmlparser/lexer/d;->e:Lorg/htmlparser/lexer/c;

    iput p2, p0, Lorg/htmlparser/lexer/d;->f:I

    iput p3, p0, Lorg/htmlparser/lexer/d;->g:I

    iput p4, p0, Lorg/htmlparser/lexer/d;->h:I

    iput p5, p0, Lorg/htmlparser/lexer/d;->i:I

    invoke-virtual {p0, v0}, Lorg/htmlparser/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/htmlparser/a;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/htmlparser/a;->c(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, Lorg/htmlparser/a;->a(C)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lorg/htmlparser/a;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/htmlparser/lexer/d;->e:Lorg/htmlparser/lexer/c;

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/htmlparser/lexer/d;->f:I

    if-ltz v1, :cond_0

    iget-object v0, p0, Lorg/htmlparser/lexer/d;->e:Lorg/htmlparser/lexer/c;

    iget v1, p0, Lorg/htmlparser/lexer/d;->f:I

    iget v2, p0, Lorg/htmlparser/lexer/d;->g:I

    invoke-virtual {v0, v1, v2}, Lorg/htmlparser/lexer/c;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/htmlparser/a;->a(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/StringBuffer;)V
    .locals 3

    invoke-super {p0}, Lorg/htmlparser/a;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/htmlparser/lexer/d;->e:Lorg/htmlparser/lexer/c;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/htmlparser/lexer/d;->f:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/htmlparser/lexer/d;->e:Lorg/htmlparser/lexer/c;

    iget v1, p0, Lorg/htmlparser/lexer/d;->f:I

    iget v2, p0, Lorg/htmlparser/lexer/d;->g:I

    invoke-virtual {v0, p1, v1, v2}, Lorg/htmlparser/lexer/c;->a(Ljava/lang/StringBuffer;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lorg/htmlparser/a;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lorg/htmlparser/lexer/d;->e:Lorg/htmlparser/lexer/c;

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/htmlparser/lexer/d;->g:I

    if-ltz v1, :cond_2

    iget v1, p0, Lorg/htmlparser/lexer/d;->h:I

    if-ltz v1, :cond_2

    iget-object v0, p0, Lorg/htmlparser/lexer/d;->e:Lorg/htmlparser/lexer/c;

    iget v1, p0, Lorg/htmlparser/lexer/d;->g:I

    iget v2, p0, Lorg/htmlparser/lexer/d;->h:I

    invoke-virtual {v0, v1, v2}, Lorg/htmlparser/lexer/c;->a(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/htmlparser/a;->b(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public final b(Ljava/lang/StringBuffer;)V
    .locals 3

    invoke-super {p0}, Lorg/htmlparser/a;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/htmlparser/lexer/d;->e:Lorg/htmlparser/lexer/c;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/htmlparser/lexer/d;->g:I

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/htmlparser/lexer/d;->h:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/htmlparser/lexer/d;->e:Lorg/htmlparser/lexer/c;

    iget v1, p0, Lorg/htmlparser/lexer/d;->g:I

    iget v2, p0, Lorg/htmlparser/lexer/d;->h:I

    invoke-virtual {v0, p1, v1, v2}, Lorg/htmlparser/lexer/c;->a(Ljava/lang/StringBuffer;II)V

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x27

    if-eq v2, v1, :cond_0

    const/16 v2, 0x22

    if-ne v2, v1, :cond_1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lorg/htmlparser/a;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/htmlparser/lexer/d;->e:Lorg/htmlparser/lexer/c;

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/htmlparser/lexer/d;->i:I

    if-ltz v1, :cond_0

    iget-object v0, p0, Lorg/htmlparser/lexer/d;->e:Lorg/htmlparser/lexer/c;

    iget v1, p0, Lorg/htmlparser/lexer/d;->h:I

    iget v2, p0, Lorg/htmlparser/lexer/d;->i:I

    invoke-virtual {v0, v1, v2}, Lorg/htmlparser/lexer/c;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/htmlparser/a;->c(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final c(Ljava/lang/StringBuffer;)V
    .locals 3

    invoke-super {p0}, Lorg/htmlparser/a;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/htmlparser/lexer/d;->e:Lorg/htmlparser/lexer/c;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/htmlparser/lexer/d;->i:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/htmlparser/lexer/d;->e:Lorg/htmlparser/lexer/c;

    iget v1, p0, Lorg/htmlparser/lexer/d;->f:I

    iget v2, p0, Lorg/htmlparser/lexer/d;->g:I

    invoke-virtual {v0, p1, v1, v2}, Lorg/htmlparser/lexer/c;->a(Ljava/lang/StringBuffer;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public final d(Ljava/lang/StringBuffer;)V
    .locals 4

    iget-object v0, p0, Lorg/htmlparser/a;->c:Ljava/lang/String;

    if-nez v0, :cond_3

    iget v0, p0, Lorg/htmlparser/lexer/d;->i:I

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lorg/htmlparser/a;->d()C

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget v1, p0, Lorg/htmlparser/lexer/d;->h:I

    iget v2, p0, Lorg/htmlparser/lexer/d;->i:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lorg/htmlparser/lexer/d;->e:Lorg/htmlparser/lexer/c;

    iget v2, p0, Lorg/htmlparser/lexer/d;->h:I

    iget v3, p0, Lorg/htmlparser/lexer/d;->i:I

    invoke-virtual {v1, p1, v2, v3}, Lorg/htmlparser/lexer/c;->a(Ljava/lang/StringBuffer;II)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lorg/htmlparser/a;->d()C

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v1, p0, Lorg/htmlparser/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public final e()I
    .locals 3

    const/4 v0, 0x0

    invoke-super {p0}, Lorg/htmlparser/a;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_0
    :goto_0
    invoke-super {p0}, Lorg/htmlparser/a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    :goto_1
    invoke-super {p0}, Lorg/htmlparser/a;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lorg/htmlparser/a;->d()C

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    :cond_3
    return v0

    :cond_4
    iget-object v1, p0, Lorg/htmlparser/lexer/d;->e:Lorg/htmlparser/lexer/c;

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/htmlparser/lexer/d;->f:I

    if-ltz v1, :cond_0

    iget v1, p0, Lorg/htmlparser/lexer/d;->g:I

    if-ltz v1, :cond_0

    iget v0, p0, Lorg/htmlparser/lexer/d;->g:I

    iget v1, p0, Lorg/htmlparser/lexer/d;->f:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lorg/htmlparser/lexer/d;->e:Lorg/htmlparser/lexer/c;

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/htmlparser/lexer/d;->g:I

    if-ltz v1, :cond_1

    iget v1, p0, Lorg/htmlparser/lexer/d;->h:I

    if-ltz v1, :cond_1

    iget v1, p0, Lorg/htmlparser/lexer/d;->h:I

    iget v2, p0, Lorg/htmlparser/lexer/d;->g:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lorg/htmlparser/lexer/d;->e:Lorg/htmlparser/lexer/c;

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/htmlparser/lexer/d;->h:I

    if-ltz v1, :cond_2

    iget v1, p0, Lorg/htmlparser/lexer/d;->i:I

    if-ltz v1, :cond_2

    iget v1, p0, Lorg/htmlparser/lexer/d;->i:I

    iget v2, p0, Lorg/htmlparser/lexer/d;->h:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_2
.end method
