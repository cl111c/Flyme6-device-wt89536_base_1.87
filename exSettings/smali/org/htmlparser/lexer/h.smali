.class public final Lorg/htmlparser/lexer/h;
.super Lorg/htmlparser/lexer/f;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:I

.field protected c:Ljava/lang/String;

.field protected d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/htmlparser/lexer/f;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lorg/htmlparser/lexer/h;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlparser/lexer/h;->b:I

    iput-object p2, p0, Lorg/htmlparser/lexer/h;->c:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lorg/htmlparser/lexer/h;->d:I

    return-void
.end method


# virtual methods
.method public final a(I)C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/htmlparser/lexer/h;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/htmlparser/lexer/h;->b:I

    if-lt p1, v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "read beyond current offset"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/htmlparser/lexer/h;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/htmlparser/lexer/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(II)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/htmlparser/lexer/h;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int v0, p1, p2

    iget v1, p0, Lorg/htmlparser/lexer/h;->b:I

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "read beyond end of string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/htmlparser/lexer/h;->a:Ljava/lang/String;

    add-int v1, p1, p2

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/j;
        }
    .end annotation

    iput-object p1, p0, Lorg/htmlparser/lexer/h;->c:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/StringBuffer;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/htmlparser/lexer/h;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int v0, p2, p3

    iget v1, p0, Lorg/htmlparser/lexer/h;->b:I

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "read beyond end of string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/htmlparser/lexer/h;->a:Ljava/lang/String;

    add-int v1, p2, p3

    invoke-virtual {v0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public final b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/htmlparser/lexer/h;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/htmlparser/lexer/h;->b:I

    if-gtz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "can\'t unread no characters"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/htmlparser/lexer/h;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/htmlparser/lexer/h;->b:I

    return-void
.end method

.method public final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlparser/lexer/h;->a:Ljava/lang/String;

    return-void
.end method

.method public final close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lorg/htmlparser/lexer/h;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/htmlparser/lexer/h;->b:I

    goto :goto_0
.end method

.method public final mark(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/htmlparser/lexer/h;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/htmlparser/lexer/h;->b:I

    iput v0, p0, Lorg/htmlparser/lexer/h;->d:I

    return-void
.end method

.method public final markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/htmlparser/lexer/h;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/htmlparser/lexer/h;->b:I

    iget-object v1, p0, Lorg/htmlparser/lexer/h;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/htmlparser/lexer/h;->a:Ljava/lang/String;

    iget v1, p0, Lorg/htmlparser/lexer/h;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget v1, p0, Lorg/htmlparser/lexer/h;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/htmlparser/lexer/h;->b:I

    goto :goto_0
.end method

.method public final read([C)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/htmlparser/lexer/h;->read([CII)I

    move-result v0

    return v0
.end method

.method public final read([CII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/htmlparser/lexer/h;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/htmlparser/lexer/h;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lorg/htmlparser/lexer/h;->b:I

    if-lt v1, v0, :cond_1

    const/4 p3, -0x1

    :goto_0
    return p3

    :cond_1
    iget v1, p0, Lorg/htmlparser/lexer/h;->b:I

    sub-int v1, v0, v1

    if-le p3, v1, :cond_2

    iget v1, p0, Lorg/htmlparser/lexer/h;->b:I

    sub-int p3, v0, v1

    :cond_2
    iget-object v0, p0, Lorg/htmlparser/lexer/h;->a:Ljava/lang/String;

    iget v1, p0, Lorg/htmlparser/lexer/h;->b:I

    iget v2, p0, Lorg/htmlparser/lexer/h;->b:I

    add-int/2addr v2, p3

    invoke-virtual {v0, v1, v2, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    iget v0, p0, Lorg/htmlparser/lexer/h;->b:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/htmlparser/lexer/h;->b:I

    goto :goto_0
.end method

.method public final ready()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/htmlparser/lexer/h;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/htmlparser/lexer/h;->b:I

    iget-object v1, p0, Lorg/htmlparser/lexer/h;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/htmlparser/lexer/h;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, -0x1

    iget v1, p0, Lorg/htmlparser/lexer/h;->d:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/htmlparser/lexer/h;->d:I

    iput v0, p0, Lorg/htmlparser/lexer/h;->b:I

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlparser/lexer/h;->b:I

    goto :goto_0
.end method

.method public final skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lorg/htmlparser/lexer/h;->a:Ljava/lang/String;

    if-nez v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v2, v0, p1

    if-lez v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot skip backwards"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, p0, Lorg/htmlparser/lexer/h;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lorg/htmlparser/lexer/h;->b:I

    if-lt v3, v2, :cond_3

    move-wide p1, v0

    :cond_2
    :goto_0
    iget v0, p0, Lorg/htmlparser/lexer/h;->b:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lorg/htmlparser/lexer/h;->b:I

    return-wide p1

    :cond_3
    iget v0, p0, Lorg/htmlparser/lexer/h;->b:I

    sub-int v0, v2, v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    iget v0, p0, Lorg/htmlparser/lexer/h;->b:I

    sub-int v0, v2, v0

    int-to-long p1, v0

    goto :goto_0
.end method
