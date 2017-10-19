.class public Lorg/htmlparser/e/f;
.super Lorg/htmlparser/c/c;


# static fields
.field protected static final j:Lorg/htmlparser/d/a;


# instance fields
.field protected i:Lorg/htmlparser/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/htmlparser/d/a;

    invoke-direct {v0}, Lorg/htmlparser/d/a;-><init>()V

    sput-object v0, Lorg/htmlparser/e/f;->j:Lorg/htmlparser/d/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/htmlparser/c/c;-><init>()V

    sget-object v0, Lorg/htmlparser/e/f;->j:Lorg/htmlparser/d/a;

    invoke-virtual {p0, v0}, Lorg/htmlparser/c/c;->a(Lorg/htmlparser/d/b;)V

    return-void
.end method

.method private a(ILjava/lang/StringBuffer;)V
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/htmlparser/c/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/htmlparser/e/f;->r()Lorg/htmlparser/util/m;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Lorg/htmlparser/util/m;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Lorg/htmlparser/util/m;->b()Lorg/htmlparser/b;

    move-result-object v0

    instance-of v2, v0, Lorg/htmlparser/e/f;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/htmlparser/e/f;

    add-int/lit8 v2, p1, 0x1

    invoke-direct {v0, v2, p2}, Lorg/htmlparser/e/f;->a(ILjava/lang/StringBuffer;)V

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_2
    if-gt v2, p1, :cond_2

    const-string v4, "  "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/htmlparser/e/f;->i:Lorg/htmlparser/g;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/htmlparser/e/f;->i:Lorg/htmlparser/g;

    if-eq p0, v0, :cond_5

    move v0, v1

    :goto_3
    if-gt v0, p1, :cond_4

    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lorg/htmlparser/e/f;->i:Lorg/htmlparser/g;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/htmlparser/e/f;->r()Lorg/htmlparser/util/m;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Lorg/htmlparser/util/m;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lorg/htmlparser/util/m;->b()Lorg/htmlparser/b;

    move-result-object v2

    invoke-interface {v2}, Lorg/htmlparser/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Z)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0, p1}, Lorg/htmlparser/c/c;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/htmlparser/c/c;->k()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0, p1}, Lorg/htmlparser/e/f;->a(Ljava/lang/StringBuffer;Z)V

    iget-object v1, p0, Lorg/htmlparser/e/f;->i:Lorg/htmlparser/g;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/htmlparser/e/f;->i:Lorg/htmlparser/g;

    invoke-interface {v1}, Lorg/htmlparser/b;->c()I

    move-result v1

    iget-object v2, p0, Lorg/htmlparser/e/f;->i:Lorg/htmlparser/g;

    invoke-interface {v2}, Lorg/htmlparser/b;->d()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/htmlparser/e/f;->i:Lorg/htmlparser/g;

    invoke-interface {v1}, Lorg/htmlparser/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/StringBuffer;Z)V
    .locals 4

    invoke-virtual {p0}, Lorg/htmlparser/e/f;->r()Lorg/htmlparser/util/m;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/htmlparser/util/m;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/htmlparser/util/m;->b()Lorg/htmlparser/b;

    move-result-object v1

    if-eqz p2, :cond_1

    invoke-interface {v1}, Lorg/htmlparser/b;->c()I

    move-result v2

    invoke-interface {v1}, Lorg/htmlparser/b;->d()I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_1
    invoke-interface {v1}, Lorg/htmlparser/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Lorg/htmlparser/g;)V
    .locals 0

    iput-object p1, p0, Lorg/htmlparser/e/f;->i:Lorg/htmlparser/g;

    return-void
.end method

.method public final a(Lorg/htmlparser/util/h;Lorg/htmlparser/d;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/htmlparser/c/a;->a(Lorg/htmlparser/util/h;Lorg/htmlparser/d;)V

    invoke-virtual {p0}, Lorg/htmlparser/e/f;->r()Lorg/htmlparser/util/m;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/htmlparser/util/m;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/htmlparser/util/m;->b()Lorg/htmlparser/b;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/htmlparser/b;->a(Lorg/htmlparser/util/h;Lorg/htmlparser/d;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/htmlparser/e/f;->i:Lorg/htmlparser/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/htmlparser/e/f;->i:Lorg/htmlparser/g;

    if-eq p0, v0, :cond_1

    iget-object v0, p0, Lorg/htmlparser/e/f;->i:Lorg/htmlparser/g;

    invoke-interface {v0, p1, p2}, Lorg/htmlparser/b;->a(Lorg/htmlparser/util/h;Lorg/htmlparser/d;)V

    :cond_1
    return-void
.end method

.method public final a_()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, v2}, Lorg/htmlparser/c/c;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final o()Lorg/htmlparser/g;
    .locals 1

    iget-object v0, p0, Lorg/htmlparser/e/f;->i:Lorg/htmlparser/g;

    return-object v0
.end method

.method public final r()Lorg/htmlparser/util/m;
    .locals 1

    invoke-virtual {p0}, Lorg/htmlparser/c/a;->e()Lorg/htmlparser/util/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/htmlparser/c/a;->e()Lorg/htmlparser/util/h;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlparser/util/h;->b()Lorg/htmlparser/util/m;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/htmlparser/util/h;

    invoke-direct {v0}, Lorg/htmlparser/util/h;-><init>()V

    invoke-virtual {v0}, Lorg/htmlparser/util/h;->b()Lorg/htmlparser/util/m;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/htmlparser/e/f;->a(ILjava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
