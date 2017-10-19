.class public final Lorg/htmlparser/e/aa;
.super Lorg/htmlparser/e/f;


# static fields
.field private static final l:[Ljava/lang/String;

.field private static final m:[Ljava/lang/String;


# instance fields
.field protected k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "SCRIPT"

    aput-object v1, v0, v2

    sput-object v0, Lorg/htmlparser/e/aa;->l:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "BODY"

    aput-object v1, v0, v2

    const-string v1, "HTML"

    aput-object v1, v0, v3

    sput-object v0, Lorg/htmlparser/e/aa;->m:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/htmlparser/e/f;-><init>()V

    new-instance v0, Lorg/htmlparser/d/d;

    invoke-direct {v0}, Lorg/htmlparser/d/d;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/c/c;->a(Lorg/htmlparser/d/b;)V

    return-void
.end method

.method private t()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/htmlparser/e/aa;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/htmlparser/e/aa;->k:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/htmlparser/e/f;->r()Lorg/htmlparser/util/m;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Lorg/htmlparser/util/m;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Lorg/htmlparser/util/m;->b()Lorg/htmlparser/b;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/c/a;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/htmlparser/c/a;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Ljava/lang/StringBuffer;Z)V
    .locals 4

    invoke-direct {p0}, Lorg/htmlparser/e/aa;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/htmlparser/e/aa;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/htmlparser/e/f;->r()Lorg/htmlparser/util/m;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Lorg/htmlparser/util/m;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/htmlparser/util/m;->b()Lorg/htmlparser/b;

    move-result-object v1

    if-eqz p2, :cond_3

    invoke-interface {v1}, Lorg/htmlparser/b;->c()I

    move-result v2

    invoke-interface {v1}, Lorg/htmlparser/b;->d()I

    move-result v3

    if-eq v2, v3, :cond_2

    :cond_3
    invoke-interface {v1, p2}, Lorg/htmlparser/b;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/htmlparser/e/aa;->k:Ljava/lang/String;

    return-void
.end method

.method public final l()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/htmlparser/e/aa;->l:[Ljava/lang/String;

    return-object v0
.end method

.method public final n()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/htmlparser/e/aa;->m:[Ljava/lang/String;

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    const-string v0, "LANGUAGE"

    invoke-virtual {p0, v0}, Lorg/htmlparser/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Script Node : \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "LANGUAGE"

    invoke-virtual {p0, v1}, Lorg/htmlparser/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "TYPE"

    invoke-virtual {p0, v1}, Lorg/htmlparser/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "Properties -->\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "LANGUAGE"

    invoke-virtual {p0, v1}, Lorg/htmlparser/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "LANGUAGE"

    invoke-virtual {p0, v1}, Lorg/htmlparser/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "[Language : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "LANGUAGE"

    invoke-virtual {p0, v2}, Lorg/htmlparser/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v1, "TYPE"

    invoke-virtual {p0, v1}, Lorg/htmlparser/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "TYPE"

    invoke-virtual {p0, v1}, Lorg/htmlparser/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "[Type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "TYPE"

    invoke-virtual {p0, v2}, Lorg/htmlparser/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "Code\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "****\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0}, Lorg/htmlparser/e/aa;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
