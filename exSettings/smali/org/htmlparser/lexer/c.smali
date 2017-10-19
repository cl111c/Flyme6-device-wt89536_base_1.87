.class public final Lorg/htmlparser/lexer/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static f:Lorg/htmlparser/b/a;

.field static g:Ljava/lang/Class;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Lorg/htmlparser/lexer/f;

.field protected d:Lorg/htmlparser/lexer/e;

.field protected transient e:Ljava/net/URLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/htmlparser/b/a;

    invoke-direct {v0}, Lorg/htmlparser/b/a;-><init>()V

    sput-object v0, Lorg/htmlparser/lexer/c;->f:Lorg/htmlparser/b/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/htmlparser/lexer/c;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/htmlparser/lexer/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    const-string p2, "ISO-8859-1"

    :cond_1
    new-instance v0, Lorg/htmlparser/lexer/h;

    invoke-direct {v0, p1, p2}, Lorg/htmlparser/lexer/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/htmlparser/lexer/c;->c:Lorg/htmlparser/lexer/f;

    new-instance v0, Lorg/htmlparser/lexer/e;

    invoke-direct {v0, p0}, Lorg/htmlparser/lexer/e;-><init>(Lorg/htmlparser/lexer/c;)V

    iput-object v0, p0, Lorg/htmlparser/lexer/c;->d:Lorg/htmlparser/lexer/e;

    iput-object v1, p0, Lorg/htmlparser/lexer/c;->e:Ljava/net/URLConnection;

    iput-object v1, p0, Lorg/htmlparser/lexer/c;->a:Ljava/lang/String;

    iput-object v1, p0, Lorg/htmlparser/lexer/c;->b:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string v0, "java.nio.charset.Charset"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "forName"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v0, Lorg/htmlparser/lexer/c;->g:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lorg/htmlparser/lexer/c;->f(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/htmlparser/lexer/c;->g:Ljava/lang/Class;

    :goto_0
    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "name"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    :goto_1
    return-object p0

    :cond_0
    sget-object v0, Lorg/htmlparser/lexer/c;->g:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "unable to determine cannonical charset name for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " - using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object p0, p1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static a()Lorg/htmlparser/b/a;
    .locals 1

    sget-object v0, Lorg/htmlparser/lexer/c;->f:Lorg/htmlparser/b/a;

    return-object v0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v4, 0x3f

    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string p1, ""

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    :try_start_0
    iget-object v3, p0, Lorg/htmlparser/lexer/c;->b:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/htmlparser/lexer/c;->a:Ljava/lang/String;

    :cond_3
    if-eqz v3, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v4, v1, :cond_5

    const/16 v1, 0x3f

    invoke-virtual {v3, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v7, v1, :cond_4

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    :cond_4
    new-instance v1, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    :goto_2
    const-string v4, "/."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "/../"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move v0, v2

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/net/URL;

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_6
    const-string v4, "/./"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "/."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move v0, v2

    goto :goto_2

    :cond_8
    :goto_3
    const-string v4, "/\\"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v7, v4, :cond_9

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v5, 0x0

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v0, v2

    goto :goto_3

    :cond_9
    if-eqz v0, :cond_a

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto/16 :goto_0

    :cond_a
    move-object v0, v1

    goto :goto_4
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/Class;
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
.method public final a(Lorg/htmlparser/lexer/a;)C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/j;
        }
    .end annotation

    const/4 v3, -0x1

    const/16 v1, 0xa

    invoke-virtual {p1}, Lorg/htmlparser/lexer/a;->a()I

    move-result v2

    iget-object v0, p0, Lorg/htmlparser/lexer/c;->c:Lorg/htmlparser/lexer/f;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/f;->d()I

    move-result v0

    if-ne v0, v2, :cond_3

    :try_start_0
    iget-object v0, p0, Lorg/htmlparser/lexer/c;->c:Lorg/htmlparser/lexer/f;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/f;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v3, v0, :cond_2

    const v0, 0xffff

    :goto_0
    const/16 v2, 0xd

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lorg/htmlparser/lexer/c;->c:Lorg/htmlparser/lexer/f;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/f;->d()I

    move-result v0

    invoke-virtual {p1}, Lorg/htmlparser/lexer/a;->a()I

    move-result v2

    if-ne v0, v2, :cond_7

    :try_start_1
    iget-object v0, p0, Lorg/htmlparser/lexer/c;->c:Lorg/htmlparser/lexer/f;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/f;->read()I

    move-result v0

    if-eq v3, v0, :cond_6

    int-to-char v0, v0

    if-ne v1, v0, :cond_5

    invoke-virtual {p1}, Lorg/htmlparser/lexer/a;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move v0, v1

    :cond_0
    :goto_1
    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lorg/htmlparser/lexer/c;->d:Lorg/htmlparser/lexer/e;

    invoke-virtual {v1, p1}, Lorg/htmlparser/lexer/e;->a(Lorg/htmlparser/lexer/a;)I

    :cond_1
    return v0

    :cond_2
    int-to-char v0, v0

    :try_start_2
    invoke-virtual {p1}, Lorg/htmlparser/lexer/a;->b()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/htmlparser/util/j;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "problem reading a character at position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/htmlparser/lexer/a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/htmlparser/util/j;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    if-le v0, v2, :cond_4

    :try_start_3
    iget-object v0, p0, Lorg/htmlparser/lexer/c;->c:Lorg/htmlparser/lexer/f;

    invoke-virtual {v0, v2}, Lorg/htmlparser/lexer/f;->a(I)C
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    invoke-virtual {p1}, Lorg/htmlparser/lexer/a;->b()V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lorg/htmlparser/util/j;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "can\'t read a character at position "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/htmlparser/util/j;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    new-instance v0, Lorg/htmlparser/util/j;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "attempt to read future characters from source "

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/htmlparser/lexer/c;->c:Lorg/htmlparser/lexer/f;

    invoke-virtual {v2}, Lorg/htmlparser/lexer/f;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/htmlparser/util/j;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :try_start_4
    iget-object v0, p0, Lorg/htmlparser/lexer/c;->c:Lorg/htmlparser/lexer/f;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/f;->b()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_5
    new-instance v1, Lorg/htmlparser/util/j;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "can\'t unread a character at position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/htmlparser/lexer/a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/htmlparser/util/j;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    move-exception v0

    new-instance v1, Lorg/htmlparser/util/j;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "problem reading a character at position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/htmlparser/lexer/a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/htmlparser/util/j;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    move v0, v1

    goto/16 :goto_1

    :cond_7
    :try_start_6
    iget-object v0, p0, Lorg/htmlparser/lexer/c;->c:Lorg/htmlparser/lexer/f;

    invoke-virtual {p1}, Lorg/htmlparser/lexer/a;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/htmlparser/lexer/f;->a(I)C

    move-result v0

    if-ne v1, v0, :cond_8

    invoke-virtual {p1}, Lorg/htmlparser/lexer/a;->b()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_8
    move v0, v1

    goto/16 :goto_1

    :catch_4
    move-exception v0

    new-instance v1, Lorg/htmlparser/util/j;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "can\'t read a character at position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/htmlparser/lexer/a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/htmlparser/util/j;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(II)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/htmlparser/lexer/c;->c:Lorg/htmlparser/lexer/f;

    sub-int v1, p2, p1

    invoke-virtual {v0, p1, v1}, Lorg/htmlparser/lexer/f;->a(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "can\'t get the "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sub-int v3, p2, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "characters at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v3, -0x1

    const/4 v4, 0x1

    iget-object v0, p0, Lorg/htmlparser/lexer/c;->c:Lorg/htmlparser/lexer/f;

    if-nez v0, :cond_3

    const-string v1, "ISO-8859-1"

    :goto_0
    if-eqz p1, :cond_4

    const-string v0, "charset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_4

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v4, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v4, v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v0, v1}, Lorg/htmlparser/lexer/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_3
    iget-object v0, p0, Lorg/htmlparser/lexer/c;->c:Lorg/htmlparser/lexer/f;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/f;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/StringBuffer;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lorg/htmlparser/lexer/c;->c:Lorg/htmlparser/lexer/f;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/f;->d()I

    move-result v0

    if-lt v0, p2, :cond_0

    iget-object v0, p0, Lorg/htmlparser/lexer/c;->c:Lorg/htmlparser/lexer/f;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/f;->d()I

    move-result v0

    if-ge v0, p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "attempt to extract future characters from source"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/htmlparser/lexer/c;->c:Lorg/htmlparser/lexer/f;

    invoke-virtual {v2}, Lorg/htmlparser/lexer/f;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ge p3, p2, :cond_2

    :goto_0
    sub-int v0, p2, p3

    :try_start_0
    iget-object v1, p0, Lorg/htmlparser/lexer/c;->c:Lorg/htmlparser/lexer/f;

    invoke-virtual {v1, p1, p3, v0}, Lorg/htmlparser/lexer/f;->a(Ljava/lang/StringBuffer;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "can\'t get the "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sub-int v3, p2, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "characters at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move v4, p3

    move p3, p2

    move p2, v4

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/htmlparser/lexer/c;->b:Ljava/lang/String;

    return-void
.end method

.method public final b(Lorg/htmlparser/lexer/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/j;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/htmlparser/lexer/a;->c()V

    invoke-virtual {p1}, Lorg/htmlparser/lexer/a;->a()I

    move-result v0

    :try_start_0
    iget-object v1, p0, Lorg/htmlparser/lexer/c;->c:Lorg/htmlparser/lexer/f;

    invoke-virtual {v1, v0}, Lorg/htmlparser/lexer/f;->a(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v2, v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/htmlparser/lexer/c;->c:Lorg/htmlparser/lexer/f;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lorg/htmlparser/lexer/f;->a(I)C

    move-result v0

    const/16 v1, 0xd

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Lorg/htmlparser/lexer/a;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/htmlparser/util/j;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "can\'t read a character at position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/htmlparser/lexer/a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/htmlparser/util/j;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final c(Lorg/htmlparser/lexer/a;)I
    .locals 1

    iget-object v0, p0, Lorg/htmlparser/lexer/c;->d:Lorg/htmlparser/lexer/e;

    invoke-virtual {v0, p1}, Lorg/htmlparser/lexer/e;->b(Lorg/htmlparser/lexer/a;)I

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/j;
        }
    .end annotation

    iget-object v0, p0, Lorg/htmlparser/lexer/c;->c:Lorg/htmlparser/lexer/f;

    invoke-virtual {v0, p1}, Lorg/htmlparser/lexer/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final d(Lorg/htmlparser/lexer/a;)I
    .locals 2

    iget-object v0, p0, Lorg/htmlparser/lexer/c;->d:Lorg/htmlparser/lexer/e;

    invoke-virtual {v0, p1}, Lorg/htmlparser/lexer/e;->b(Lorg/htmlparser/lexer/a;)I

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/htmlparser/lexer/e;->a(I)I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Lorg/htmlparser/lexer/a;->a()I

    move-result v1

    sub-int v0, v1, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/htmlparser/lexer/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lorg/htmlparser/lexer/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    const-string v1, "text/html"

    iget-object v0, p0, Lorg/htmlparser/lexer/c;->e:Ljava/net/URLConnection;

    if-eqz v0, :cond_0

    const-string v2, "Content-Type"

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected final finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lorg/htmlparser/lexer/c;->c:Lorg/htmlparser/lexer/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/htmlparser/lexer/c;->c:Lorg/htmlparser/lexer/f;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/f;->c()V

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/htmlparser/lexer/c;->c:Lorg/htmlparser/lexer/f;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/f;->d()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x2b

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v0, p0, Lorg/htmlparser/lexer/c;->c:Lorg/htmlparser/lexer/f;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/f;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x28

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/htmlparser/lexer/c;->c:Lorg/htmlparser/lexer/f;

    invoke-virtual {v2}, Lorg/htmlparser/lexer/f;->d()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lorg/htmlparser/lexer/c;->a(Ljava/lang/StringBuffer;II)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
