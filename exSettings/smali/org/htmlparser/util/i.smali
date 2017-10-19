.class final Lorg/htmlparser/util/i;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/htmlparser/util/m;


# instance fields
.field a:I

.field private final b:Lorg/htmlparser/util/h;


# direct methods
.method constructor <init>(Lorg/htmlparser/util/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/htmlparser/util/i;->b:Lorg/htmlparser/util/h;

    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlparser/util/i;->a:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget v0, p0, Lorg/htmlparser/util/i;->a:I

    iget-object v1, p0, Lorg/htmlparser/util/i;->b:Lorg/htmlparser/util/h;

    invoke-static {v1}, Lorg/htmlparser/util/h;->a(Lorg/htmlparser/util/h;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lorg/htmlparser/b;
    .locals 4

    iget-object v1, p0, Lorg/htmlparser/util/i;->b:Lorg/htmlparser/util/h;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lorg/htmlparser/util/i;->a:I

    iget-object v2, p0, Lorg/htmlparser/util/i;->b:Lorg/htmlparser/util/h;

    invoke-static {v2}, Lorg/htmlparser/util/h;->a(Lorg/htmlparser/util/h;)I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lorg/htmlparser/util/i;->b:Lorg/htmlparser/util/h;

    invoke-static {v0}, Lorg/htmlparser/util/h;->b(Lorg/htmlparser/util/h;)[Lorg/htmlparser/b;

    move-result-object v0

    iget v2, p0, Lorg/htmlparser/util/i;->a:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/htmlparser/util/i;->a:I

    aget-object v0, v0, v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :cond_0
    monitor-exit v1

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Vector Enumeration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
