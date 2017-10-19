.class public Lorg/htmlparser/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/htmlparser/d;


# static fields
.field static c:Ljava/lang/Class;


# instance fields
.field protected b:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/htmlparser/a/a;->c:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.htmlparser.e.p"

    invoke-static {v0}, Lorg/htmlparser/a/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/htmlparser/a/a;->c:Ljava/lang/Class;

    :goto_0
    invoke-direct {p0, v0}, Lorg/htmlparser/a/a;-><init>(Ljava/lang/Class;)V

    return-void

    :cond_0
    sget-object v0, Lorg/htmlparser/a/a;->c:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/htmlparser/a/a;->b:Ljava/lang/Class;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Class;
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
.method public a(Lorg/htmlparser/b;)Z
    .locals 2

    iget-object v0, p0, Lorg/htmlparser/a/a;->b:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/htmlparser/a/a;->b:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
