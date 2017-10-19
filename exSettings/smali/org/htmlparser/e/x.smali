.class public final Lorg/htmlparser/e/x;
.super Lorg/htmlparser/e/f;


# static fields
.field private static final k:[Ljava/lang/String;

.field private static final l:[Ljava/lang/String;

.field private static final m:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "OPTION"

    aput-object v1, v0, v2

    sput-object v0, Lorg/htmlparser/e/x;->k:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "INPUT"

    aput-object v1, v0, v2

    const-string v1, "TEXTAREA"

    aput-object v1, v0, v3

    const-string v1, "SELECT"

    aput-object v1, v0, v4

    const-string v1, "OPTION"

    aput-object v1, v0, v5

    sput-object v0, Lorg/htmlparser/e/x;->l:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "SELECT"

    aput-object v1, v0, v2

    const-string v1, "FORM"

    aput-object v1, v0, v3

    const-string v1, "BODY"

    aput-object v1, v0, v4

    const-string v1, "HTML"

    aput-object v1, v0, v5

    sput-object v0, Lorg/htmlparser/e/x;->m:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/htmlparser/e/f;-><init>()V

    return-void
.end method

.method private s()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/htmlparser/e/f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final l()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/htmlparser/e/x;->k:[Ljava/lang/String;

    return-object v0
.end method

.method public final m()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/htmlparser/e/x;->l:[Ljava/lang/String;

    return-object v0
.end method

.method public final n()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/htmlparser/e/x;->m:[Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "OPTION VALUE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "VALUE"

    invoke-virtual {p0, v1}, Lorg/htmlparser/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " TEXT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0}, Lorg/htmlparser/e/x;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
