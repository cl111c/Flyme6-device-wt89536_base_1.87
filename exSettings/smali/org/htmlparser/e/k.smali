.class public Lorg/htmlparser/e/k;
.super Lorg/htmlparser/e/f;


# static fields
.field static l:Ljava/lang/Class;

.field private static final m:[Ljava/lang/String;

.field private static final n:[Ljava/lang/String;


# instance fields
.field protected k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "FORM"

    aput-object v1, v0, v2

    sput-object v0, Lorg/htmlparser/e/k;->m:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "HTML"

    aput-object v1, v0, v2

    const-string v1, "BODY"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "TABLE"

    aput-object v2, v0, v1

    sput-object v0, Lorg/htmlparser/e/k;->n:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/htmlparser/e/f;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlparser/e/k;->k:Ljava/lang/String;

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final l()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/htmlparser/e/k;->m:[Ljava/lang/String;

    return-object v0
.end method

.method public final m()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/htmlparser/e/k;->m:[Ljava/lang/String;

    return-object v0
.end method

.method public final n()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/htmlparser/e/k;->n:[Ljava/lang/String;

    return-object v0
.end method

.method public final s()Lorg/htmlparser/util/h;
    .locals 3

    sget-object v0, Lorg/htmlparser/e/k;->l:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.htmlparser.e.r"

    invoke-static {v0}, Lorg/htmlparser/e/k;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/htmlparser/e/k;->l:Ljava/lang/Class;

    :goto_0
    invoke-virtual {p0}, Lorg/htmlparser/c/a;->e()Lorg/htmlparser/util/h;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Lorg/htmlparser/util/h;

    invoke-direct {v0}, Lorg/htmlparser/util/h;-><init>()V

    :goto_1
    return-object v0

    :cond_0
    sget-object v0, Lorg/htmlparser/e/k;->l:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/htmlparser/a/a;

    invoke-direct {v2, v0}, Lorg/htmlparser/a/a;-><init>(Ljava/lang/Class;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/htmlparser/util/h;->a(Lorg/htmlparser/d;Z)Lorg/htmlparser/util/h;

    move-result-object v0

    goto :goto_1
.end method

.method public final t()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/htmlparser/e/k;->k:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "ACTION"

    invoke-virtual {p0, v0}, Lorg/htmlparser/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_0
    :goto_0
    iput-object v0, p0, Lorg/htmlparser/e/k;->k:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lorg/htmlparser/e/k;->k:Ljava/lang/String;

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lorg/htmlparser/c/a;->q()Lorg/htmlparser/lexer/c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/htmlparser/c/a;->q()Lorg/htmlparser/lexer/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/htmlparser/lexer/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "FORM TAG : Form at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/htmlparser/e/k;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "; begins at : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlparser/c/a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "; ends at : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlparser/c/a;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    const-string v0, "NAME"

    invoke-virtual {p0, v0}, Lorg/htmlparser/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
