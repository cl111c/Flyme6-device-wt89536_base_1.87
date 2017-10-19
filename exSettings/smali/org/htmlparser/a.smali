.class public Lorg/htmlparser/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:C


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/htmlparser/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lorg/htmlparser/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;B)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lorg/htmlparser/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/htmlparser/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/htmlparser/a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlparser/a;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-char v0, p0, Lorg/htmlparser/a;->d:C

    return-void
.end method

.method private f(Ljava/lang/StringBuffer;)V
    .locals 1

    iget-char v0, p0, Lorg/htmlparser/a;->d:C

    if-eqz v0, :cond_0

    iget-char v0, p0, Lorg/htmlparser/a;->d:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/htmlparser/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(C)V
    .locals 0

    iput-char p1, p0, Lorg/htmlparser/a;->d:C

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/htmlparser/a;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/StringBuffer;)V
    .locals 1

    iget-object v0, p0, Lorg/htmlparser/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/htmlparser/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/htmlparser/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/htmlparser/a;->b:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/StringBuffer;)V
    .locals 1

    iget-object v0, p0, Lorg/htmlparser/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/htmlparser/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/htmlparser/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/htmlparser/a;->c:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/StringBuffer;)V
    .locals 1

    iget-object v0, p0, Lorg/htmlparser/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/htmlparser/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public final d()C
    .locals 1

    iget-char v0, p0, Lorg/htmlparser/a;->d:C

    return v0
.end method

.method public d(Ljava/lang/StringBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/htmlparser/a;->f(Ljava/lang/StringBuffer;)V

    invoke-virtual {p0, p1}, Lorg/htmlparser/a;->c(Ljava/lang/StringBuffer;)V

    invoke-direct {p0, p1}, Lorg/htmlparser/a;->f(Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public e()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/htmlparser/a;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lorg/htmlparser/a;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-char v1, p0, Lorg/htmlparser/a;->d:C

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    :cond_3
    return v0
.end method

.method public final e(Ljava/lang/StringBuffer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/htmlparser/a;->a(Ljava/lang/StringBuffer;)V

    invoke-virtual {p0, p1}, Lorg/htmlparser/a;->b(Ljava/lang/StringBuffer;)V

    invoke-virtual {p0, p1}, Lorg/htmlparser/a;->d(Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/htmlparser/a;->e()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, v1}, Lorg/htmlparser/a;->e(Ljava/lang/StringBuffer;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
