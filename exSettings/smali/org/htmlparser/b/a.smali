.class public final Lorg/htmlparser/b/a;
.super Ljava/lang/Object;


# static fields
.field protected static a:Ljava/util/Hashtable;

.field protected static l:Ljava/text/SimpleDateFormat;

.field private static final m:[Ljava/lang/String;

.field private static final n:[C


# instance fields
.field protected b:Ljava/util/Hashtable;

.field protected c:Ljava/lang/String;

.field protected d:I

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/util/Hashtable;

.field protected j:Lorg/htmlparser/b/b;

.field protected k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/htmlparser/b/a;->a:Ljava/util/Hashtable;

    const-string v1, "User-Agent"

    const-string v2, "HTMLParser/2.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/htmlparser/b/a;->a:Ljava/util/Hashtable;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip, deflate"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "The web site you seek cannot be located, but countless more exist"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "You step in the stream, but the water has moved on. This page is not here."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Yesterday the page existed. Today it does not. The internet is like that."

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "That page was so big. It might have been very useful. But now it is gone."

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Three things are certain: death, taxes and broken links. Guess which has occured."

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Chaos reigns within. Reflect, repent and enter the correct URL. Order shall return."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Stay the patient course. Of little worth is your ire. The page is not found."

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "A non-existant URL reduces your expensive computer to a simple stone."

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Many people have visited that page. Today, you are not one of the lucky ones."

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Cutting the wind with a knife. Bookmarking a URL. Both are ephemeral."

    aput-object v2, v0, v1

    sput-object v0, Lorg/htmlparser/b/a;->m:[Ljava/lang/String;

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/htmlparser/b/a;->n:[C

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd-MMM-yy kk:mm:ss z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/htmlparser/b/a;->l:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/htmlparser/b/a;->a:Ljava/util/Hashtable;

    invoke-direct {p0, v0}, Lorg/htmlparser/b/a;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Hashtable;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/htmlparser/b/a;->b:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/htmlparser/b/a;->c:Ljava/lang/String;

    iput v1, p0, Lorg/htmlparser/b/a;->d:I

    iput-object v0, p0, Lorg/htmlparser/b/a;->e:Ljava/lang/String;

    iput-object v0, p0, Lorg/htmlparser/b/a;->f:Ljava/lang/String;

    iput-object v0, p0, Lorg/htmlparser/b/a;->g:Ljava/lang/String;

    iput-object v0, p0, Lorg/htmlparser/b/a;->h:Ljava/lang/String;

    iput-object v0, p0, Lorg/htmlparser/b/a;->i:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/htmlparser/b/a;->j:Lorg/htmlparser/b/b;

    iput-boolean v1, p0, Lorg/htmlparser/b/a;->k:Z

    return-void
.end method

.method public static a()Ljava/util/Hashtable;
    .locals 1

    sget-object v0, Lorg/htmlparser/b/a;->a:Ljava/util/Hashtable;

    return-object v0
.end method
