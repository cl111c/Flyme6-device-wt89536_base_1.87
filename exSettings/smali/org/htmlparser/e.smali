.class public final Lorg/htmlparser/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/htmlparser/c;


# instance fields
.field protected a:Lorg/htmlparser/h;

.field protected b:Lorg/htmlparser/f;

.field protected c:Lorg/htmlparser/g;

.field protected d:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/htmlparser/e;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/htmlparser/e;->d:Ljava/util/Map;

    new-instance v0, Lorg/htmlparser/c/d;

    invoke-direct {v0, v2, v1, v1}, Lorg/htmlparser/c/d;-><init>(Lorg/htmlparser/lexer/c;II)V

    iput-object v0, p0, Lorg/htmlparser/e;->a:Lorg/htmlparser/h;

    new-instance v0, Lorg/htmlparser/c/b;

    invoke-direct {v0, v2, v1, v1}, Lorg/htmlparser/c/b;-><init>(Lorg/htmlparser/lexer/c;II)V

    iput-object v0, p0, Lorg/htmlparser/e;->b:Lorg/htmlparser/f;

    new-instance v0, Lorg/htmlparser/c/c;

    invoke-direct {v0, v2, v1, v1, v2}, Lorg/htmlparser/c/c;-><init>(Lorg/htmlparser/lexer/c;IILjava/util/Vector;)V

    iput-object v0, p0, Lorg/htmlparser/e;->c:Lorg/htmlparser/g;

    new-instance v0, Lorg/htmlparser/e/a;

    invoke-direct {v0}, Lorg/htmlparser/e/a;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/b;

    invoke-direct {v0}, Lorg/htmlparser/e/b;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/d;

    invoke-direct {v0}, Lorg/htmlparser/e/d;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/e;

    invoke-direct {v0}, Lorg/htmlparser/e/e;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/g;

    invoke-direct {v0}, Lorg/htmlparser/e/g;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/h;

    invoke-direct {v0}, Lorg/htmlparser/e/h;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/j;

    invoke-direct {v0}, Lorg/htmlparser/e/j;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/k;

    invoke-direct {v0}, Lorg/htmlparser/e/k;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/l;

    invoke-direct {v0}, Lorg/htmlparser/e/l;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/m;

    invoke-direct {v0}, Lorg/htmlparser/e/m;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/o;

    invoke-direct {v0}, Lorg/htmlparser/e/o;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/q;

    invoke-direct {v0}, Lorg/htmlparser/e/q;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/r;

    invoke-direct {v0}, Lorg/htmlparser/e/r;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/s;

    invoke-direct {v0}, Lorg/htmlparser/e/s;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/t;

    invoke-direct {v0}, Lorg/htmlparser/e/t;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/u;

    invoke-direct {v0}, Lorg/htmlparser/e/u;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/v;

    invoke-direct {v0}, Lorg/htmlparser/e/v;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/w;

    invoke-direct {v0}, Lorg/htmlparser/e/w;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/x;

    invoke-direct {v0}, Lorg/htmlparser/e/x;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/y;

    invoke-direct {v0}, Lorg/htmlparser/e/y;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/z;

    invoke-direct {v0}, Lorg/htmlparser/e/z;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/aa;

    invoke-direct {v0}, Lorg/htmlparser/e/aa;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/ab;

    invoke-direct {v0}, Lorg/htmlparser/e/ab;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/ad;

    invoke-direct {v0}, Lorg/htmlparser/e/ad;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/ae;

    invoke-direct {v0}, Lorg/htmlparser/e/ae;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/af;

    invoke-direct {v0}, Lorg/htmlparser/e/af;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/ag;

    invoke-direct {v0}, Lorg/htmlparser/e/ag;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/ah;

    invoke-direct {v0}, Lorg/htmlparser/e/ah;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/ai;

    invoke-direct {v0}, Lorg/htmlparser/e/ai;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/aj;

    invoke-direct {v0}, Lorg/htmlparser/e/aj;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/i;

    invoke-direct {v0}, Lorg/htmlparser/e/i;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/ac;

    invoke-direct {v0}, Lorg/htmlparser/e/ac;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/c;

    invoke-direct {v0}, Lorg/htmlparser/e/c;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/n;

    invoke-direct {v0}, Lorg/htmlparser/e/n;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    new-instance v0, Lorg/htmlparser/e/p;

    invoke-direct {v0}, Lorg/htmlparser/e/p;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/e;->a(Lorg/htmlparser/g;)V

    return-void
.end method

.method private a(Lorg/htmlparser/g;)V
    .locals 4

    invoke-interface {p1}, Lorg/htmlparser/g;->l()[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/htmlparser/e;->d:Ljava/util/Map;

    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lorg/htmlparser/lexer/c;IILjava/util/Vector;)Lorg/htmlparser/g;
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p4}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/a;

    invoke-virtual {v0}, Lorg/htmlparser/a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lorg/htmlparser/e;->d:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/g;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/htmlparser/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/g;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v0, p1}, Lorg/htmlparser/b;->a(Lorg/htmlparser/lexer/c;)V

    invoke-interface {v0, p2}, Lorg/htmlparser/b;->a(I)V

    invoke-interface {v0, p3}, Lorg/htmlparser/b;->b(I)V

    invoke-interface {v0, p4}, Lorg/htmlparser/g;->a(Ljava/util/Vector;)V
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    if-nez v0, :cond_1

    :try_start_2
    iget-object v0, p0, Lorg/htmlparser/e;->c:Lorg/htmlparser/g;

    invoke-interface {v0}, Lorg/htmlparser/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/g;

    invoke-interface {v0, p1}, Lorg/htmlparser/b;->a(Lorg/htmlparser/lexer/c;)V

    invoke-interface {v0, p2}, Lorg/htmlparser/b;->a(I)V

    invoke-interface {v0, p3}, Lorg/htmlparser/b;->b(I)V

    invoke-interface {v0, p4}, Lorg/htmlparser/g;->a(Ljava/util/Vector;)V
    :try_end_2
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    :goto_2
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v0, Lorg/htmlparser/c/c;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/htmlparser/c/c;-><init>(Lorg/htmlparser/lexer/c;IILjava/util/Vector;)V

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v1, v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Lorg/htmlparser/lexer/c;II)Lorg/htmlparser/h;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/htmlparser/e;->a:Lorg/htmlparser/h;

    invoke-interface {v0}, Lorg/htmlparser/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/h;

    invoke-interface {v0, p1}, Lorg/htmlparser/b;->a(Lorg/htmlparser/lexer/c;)V

    invoke-interface {v0, p2}, Lorg/htmlparser/b;->a(I)V

    invoke-interface {v0, p3}, Lorg/htmlparser/b;->b(I)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/htmlparser/c/d;

    invoke-direct {v0, p1, p2, p3}, Lorg/htmlparser/c/d;-><init>(Lorg/htmlparser/lexer/c;II)V

    goto :goto_0
.end method

.method public final b(Lorg/htmlparser/lexer/c;II)Lorg/htmlparser/f;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/htmlparser/e;->b:Lorg/htmlparser/f;

    invoke-interface {v0}, Lorg/htmlparser/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/f;

    invoke-interface {v0, p1}, Lorg/htmlparser/b;->a(Lorg/htmlparser/lexer/c;)V

    invoke-interface {v0, p2}, Lorg/htmlparser/b;->a(I)V

    invoke-interface {v0, p3}, Lorg/htmlparser/b;->b(I)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/htmlparser/c/b;

    invoke-direct {v0, p1, p2, p3}, Lorg/htmlparser/c/b;-><init>(Lorg/htmlparser/lexer/c;II)V

    goto :goto_0
.end method
