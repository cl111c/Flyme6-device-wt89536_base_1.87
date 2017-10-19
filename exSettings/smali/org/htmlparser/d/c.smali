.class public final Lorg/htmlparser/d/c;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field protected static b:[B

.field protected static c:[[C

.field protected static d:[I

.field protected static e:[C

.field protected static f:[C

.field protected static g:[C

.field protected static h:[C

.field protected static i:[C


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/16 v4, 0x61

    const/4 v0, 0x0

    sput v0, Lorg/htmlparser/d/c;->a:I

    const/16 v1, 0x40

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/htmlparser/d/c;->b:[B

    const/4 v1, 0x3

    new-array v1, v1, [[C

    new-array v2, v4, [C

    fill-array-data v2, :array_1

    aput-object v2, v1, v0

    const/4 v2, 0x1

    new-array v3, v4, [C

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v2, v4, [C

    fill-array-data v2, :array_3

    aput-object v2, v1, v5

    sput-object v1, Lorg/htmlparser/d/c;->c:[[C

    const/16 v1, 0x7b

    new-array v1, v1, [I

    sput-object v1, Lorg/htmlparser/d/c;->d:[I

    move v1, v0

    :goto_0
    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    sget-object v2, Lorg/htmlparser/d/c;->d:[I

    add-int/lit8 v3, v1, 0x41

    aput v1, v2, v3

    sget-object v2, Lorg/htmlparser/d/c;->d:[I

    add-int/lit8 v3, v1, 0x61

    add-int/lit8 v4, v1, 0x1a

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    sget-object v1, Lorg/htmlparser/d/c;->d:[I

    add-int/lit8 v2, v0, 0x30

    add-int/lit8 v3, v0, 0x34

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/htmlparser/d/c;->d:[I

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput v2, v0, v1

    sget-object v0, Lorg/htmlparser/d/c;->d:[I

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    aput v2, v0, v1

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_4

    sput-object v0, Lorg/htmlparser/d/c;->e:[C

    new-array v0, v5, [C

    fill-array-data v0, :array_5

    sput-object v0, Lorg/htmlparser/d/c;->f:[C

    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_6

    sput-object v0, Lorg/htmlparser/d/c;->g:[C

    new-array v0, v6, [C

    fill-array-data v0, :array_7

    sput-object v0, Lorg/htmlparser/d/c;->h:[C

    new-array v0, v6, [C

    fill-array-data v0, :array_8

    sput-object v0, Lorg/htmlparser/d/c;->i:[C

    return-void

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x0t
        0x1t
        0x2t
        0x0t
        0x2t
        0x0t
        0x0t
        0x2t
        0x0t
        0x2t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x1t
        0x2t
        0x0t
        0x0t
        0x2t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x2t
        0x1t
        0x1t
        0x0t
        0x2t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x2t
        0x0t
        0x1t
        0x0t
        0x2t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x1t
        0x2t
        0x0t
        0x0t
        0x1t
        0x1t
        0x2t
        0x0t
        0x1t
        0x0t
        0x2t
    .end array-data

    :array_1
    .array-data 2
        0x7bs
        0x32s
        0x30s
        0x21s
        0x29s
        0x5bs
        0x38s
        0x33s
        0x3ds
        0x58s
        0x3as
        0x35s
        0x65s
        0x39s
        0x5cs
        0x56s
        0x73s
        0x66s
        0x4es
        0x45s
        0x6bs
        0x62s
        0x59s
        0x78s
        0x5es
        0x7ds
        0x4as
        0x6ds
        0x71s
        0x0s
        0x60s
        0x0s
        0x53s
        0x0s
        0x42s
        0x27s
        0x48s
        0x72s
        0x75s
        0x31s
        0x37s
        0x4ds
        0x52s
        0x22s
        0x54s
        0x6as
        0x47s
        0x64s
        0x2ds
        0x20s
        0x7fs
        0x2es
        0x4cs
        0x5ds
        0x7es
        0x6cs
        0x6fs
        0x79s
        0x74s
        0x43s
        0x26s
        0x76s
        0x25s
        0x24s
        0x2bs
        0x28s
        0x23s
        0x41s
        0x34s
        0x9s
        0x2as
        0x44s
        0x3fs
        0x77s
        0x3bs
        0x55s
        0x69s
        0x61s
        0x63s
        0x50s
        0x67s
        0x51s
        0x49s
        0x4fs
        0x46s
        0x68s
        0x7cs
        0x36s
        0x70s
        0x6es
        0x7as
        0x2fs
        0x5fs
        0x4bs
        0x5as
        0x2cs
        0x57s
    .end array-data

    nop

    :array_2
    .array-data 2
        0x57s
        0x2es
        0x47s
        0x7as
        0x56s
        0x42s
        0x6as
        0x2fs
        0x26s
        0x49s
        0x41s
        0x34s
        0x32s
        0x5bs
        0x76s
        0x72s
        0x43s
        0x38s
        0x39s
        0x70s
        0x45s
        0x68s
        0x71s
        0x4fs
        0x9s
        0x62s
        0x44s
        0x23s
        0x75s
        0x0s
        0x7es
        0x0s
        0x5es
        0x0s
        0x77s
        0x4as
        0x61s
        0x5ds
        0x22s
        0x4bs
        0x6fs
        0x4es
        0x3bs
        0x4cs
        0x50s
        0x67s
        0x2as
        0x7ds
        0x74s
        0x54s
        0x2bs
        0x2ds
        0x2cs
        0x30s
        0x6es
        0x6bs
        0x66s
        0x35s
        0x25s
        0x21s
        0x64s
        0x4ds
        0x52s
        0x63s
        0x3fs
        0x7bs
        0x78s
        0x29s
        0x28s
        0x73s
        0x59s
        0x33s
        0x7fs
        0x6ds
        0x55s
        0x53s
        0x7cs
        0x3as
        0x5fs
        0x65s
        0x46s
        0x58s
        0x31s
        0x69s
        0x6cs
        0x5as
        0x48s
        0x27s
        0x5cs
        0x3ds
        0x24s
        0x79s
        0x37s
        0x60s
        0x51s
        0x20s
        0x36s
    .end array-data

    nop

    :array_3
    .array-data 2
        0x6es
        0x2ds
        0x75s
        0x52s
        0x60s
        0x71s
        0x5es
        0x49s
        0x5cs
        0x62s
        0x7ds
        0x29s
        0x36s
        0x20s
        0x7cs
        0x7as
        0x7fs
        0x6bs
        0x63s
        0x33s
        0x2bs
        0x68s
        0x51s
        0x66s
        0x76s
        0x31s
        0x64s
        0x54s
        0x43s
        0x0s
        0x3as
        0x0s
        0x7es
        0x0s
        0x45s
        0x2cs
        0x2as
        0x74s
        0x27s
        0x37s
        0x44s
        0x79s
        0x59s
        0x2fs
        0x6fs
        0x26s
        0x72s
        0x6as
        0x39s
        0x7bs
        0x3fs
        0x38s
        0x77s
        0x67s
        0x53s
        0x47s
        0x34s
        0x78s
        0x5ds
        0x30s
        0x23s
        0x5as
        0x5bs
        0x6cs
        0x48s
        0x55s
        0x70s
        0x69s
        0x2es
        0x4cs
        0x21s
        0x24s
        0x4es
        0x50s
        0x9s
        0x56s
        0x73s
        0x35s
        0x61s
        0x4bs
        0x58s
        0x3bs
        0x57s
        0x22s
        0x6ds
        0x4ds
        0x25s
        0x28s
        0x46s
        0x4as
        0x32s
        0x41s
        0x3ds
        0x5fs
        0x4fs
        0x42s
        0x65s
    .end array-data

    nop

    :array_4
    .array-data 2
        0x23s
        0x40s
        0x7es
        0x5es
    .end array-data

    :array_5
    .array-data 2
        0x3ds
        0x3ds
    .end array-data

    :array_6
    .array-data 2
        0x3ds
        0x3ds
        0x5es
        0x23s
        0x7es
        0x40s
    .end array-data

    :array_7
    .array-data 2
        0x23s
        0x26s
        0x21s
        0x2as
        0x24s
    .end array-data

    nop

    :array_8
    .array-data 2
        0xds
        0xas
        0x3cs
        0x3es
        0x40s
    .end array-data
.end method

.method private static a([C)J
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const-wide/16 v0, 0x0

    sget-object v2, Lorg/htmlparser/d/c;->d:[I

    const/4 v3, 0x0

    aget-char v3, p0, v3

    aget v2, v2, v3

    shl-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    add-long/2addr v0, v2

    sget-object v2, Lorg/htmlparser/d/c;->d:[I

    aget-char v3, p0, v4

    aget v2, v2, v3

    shr-int/lit8 v2, v2, 0x4

    int-to-long v2, v2

    add-long/2addr v0, v2

    sget-object v2, Lorg/htmlparser/d/c;->d:[I

    aget-char v3, p0, v4

    aget v2, v2, v3

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    int-to-long v2, v2

    add-long/2addr v0, v2

    sget-object v2, Lorg/htmlparser/d/c;->d:[I

    aget-char v3, p0, v5

    aget v2, v2, v3

    shr-int/lit8 v2, v2, 0x2

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    add-long/2addr v0, v2

    sget-object v2, Lorg/htmlparser/d/c;->d:[I

    aget-char v3, p0, v5

    aget v2, v2, v3

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x16

    int-to-long v2, v2

    add-long/2addr v0, v2

    sget-object v2, Lorg/htmlparser/d/c;->d:[I

    const/4 v3, 0x3

    aget-char v3, p0, v3

    aget v2, v2, v3

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    add-long/2addr v0, v2

    sget-object v2, Lorg/htmlparser/d/c;->d:[I

    const/4 v3, 0x4

    aget-char v3, p0, v3

    aget v2, v2, v3

    shl-int/lit8 v2, v2, 0x2

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    add-long/2addr v0, v2

    sget-object v2, Lorg/htmlparser/d/c;->d:[I

    const/4 v3, 0x5

    aget-char v3, p0, v3

    aget v2, v2, v3

    shr-int/lit8 v2, v2, 0x4

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(Lorg/htmlparser/lexer/c;Lorg/htmlparser/lexer/a;)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/j;
        }
    .end annotation

    const/4 v0, 0x6

    new-array v13, v0, [C

    new-instance v14, Ljava/lang/StringBuffer;

    const/16 v0, 0x400

    invoke-direct {v14, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    move v11, v7

    move v12, v8

    move v7, v2

    move v2, v10

    move v10, v6

    move v6, v9

    move-wide v8, v0

    :cond_0
    :goto_0
    if-eqz v2, :cond_11

    invoke-virtual/range {p0 .. p1}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v0

    int-to-char v1, v0

    const v15, 0xffff

    if-ne v15, v0, :cond_3

    const/4 v0, 0x1

    if-ne v0, v2, :cond_1

    if-nez v6, :cond_1

    if-nez v12, :cond_1

    if-nez v11, :cond_1

    if-nez v10, :cond_1

    if-eqz v7, :cond_2

    :cond_1
    new-instance v0, Lorg/htmlparser/util/j;

    const-string v1, "illegal state for exit"

    invoke-direct {v0, v1}, Lorg/htmlparser/util/j;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    packed-switch v2, :pswitch_data_0

    new-instance v0, Lorg/htmlparser/util/j;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "invalid state: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/htmlparser/util/j;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lorg/htmlparser/d/c;->e:[C

    aget-char v0, v0, v6

    if-ne v1, v0, :cond_4

    add-int/lit8 v6, v6, 0x1

    sget-object v0, Lorg/htmlparser/d/c;->e:[C

    array-length v0, v0

    if-ne v6, v0, :cond_0

    const/4 v6, 0x0

    const/4 v2, 0x2

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-lez v6, :cond_5

    sget-object v15, Lorg/htmlparser/d/c;->e:[C

    add-int/lit8 v16, v0, 0x1

    aget-char v0, v15, v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v0, v16, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_1
    aput-char v1, v13, v12

    add-int/lit8 v0, v12, 0x1

    array-length v1, v13

    if-lt v0, v1, :cond_17

    invoke-static {v13}, Lorg/htmlparser/d/c;->a([C)J

    move-result-wide v0

    const-wide/16 v8, 0x0

    cmp-long v2, v8, v0

    if-lez v2, :cond_6

    new-instance v2, Lorg/htmlparser/util/j;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "illegal length: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/htmlparser/util/j;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    const/4 v2, 0x0

    const/4 v8, 0x3

    move v12, v2

    move v2, v8

    move-wide v8, v0

    goto/16 :goto_0

    :pswitch_2
    sget-object v0, Lorg/htmlparser/d/c;->f:[C

    aget-char v0, v0, v11

    if-ne v1, v0, :cond_7

    add-int/lit8 v0, v11, 0x1

    sget-object v1, Lorg/htmlparser/d/c;->f:[C

    array-length v1, v1

    if-lt v0, v1, :cond_16

    const/4 v0, 0x0

    const/4 v2, 0x4

    move v11, v0

    goto/16 :goto_0

    :cond_7
    new-instance v0, Lorg/htmlparser/util/j;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "illegal character encountered: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " (\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/htmlparser/util/j;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    const/16 v15, 0x40

    if-ne v15, v1, :cond_8

    const/4 v0, 0x5

    move v1, v0

    move v0, v3

    move-wide v2, v4

    :goto_2
    const-wide/16 v4, 0x1

    sub-long v4, v8, v4

    const-wide/16 v8, 0x0

    cmp-long v8, v8, v4

    if-nez v8, :cond_15

    const/4 v0, 0x0

    const/4 v1, 0x6

    move-wide v8, v4

    move-wide v4, v2

    move v3, v0

    move v2, v1

    goto/16 :goto_0

    :cond_8
    const/16 v15, 0x80

    if-ge v0, v15, :cond_b

    const/16 v15, 0x9

    if-ne v0, v15, :cond_9

    const/4 v0, 0x0

    :goto_3
    sget-object v1, Lorg/htmlparser/d/c;->c:[[C

    sget-object v15, Lorg/htmlparser/d/c;->b:[B

    rem-int/lit8 v16, v3, 0x40

    aget-byte v15, v15, v16

    aget-object v1, v1, v15

    aget-char v0, v1, v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    int-to-long v0, v0

    add-long/2addr v4, v0

    add-int/lit8 v0, v3, 0x1

    move v1, v2

    move-wide v2, v4

    goto :goto_2

    :cond_9
    const/16 v15, 0x20

    if-lt v0, v15, :cond_a

    add-int/lit8 v0, v0, -0x1f

    goto :goto_3

    :cond_a
    new-instance v2, Lorg/htmlparser/util/j;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "illegal encoded character: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, " (\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/htmlparser/util/j;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v3

    move v1, v2

    move-wide v2, v4

    goto :goto_2

    :pswitch_4
    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_4
    sget-object v15, Lorg/htmlparser/d/c;->h:[C

    array-length v15, v15

    if-ge v0, v15, :cond_d

    sget-object v15, Lorg/htmlparser/d/c;->h:[C

    aget-char v15, v15, v0

    if-ne v1, v15, :cond_c

    const/4 v2, 0x1

    sget-object v1, Lorg/htmlparser/d/c;->i:[C

    aget-char v1, v1, v0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_d
    if-nez v2, :cond_e

    new-instance v0, Lorg/htmlparser/util/j;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "unexpected escape character: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " (\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/htmlparser/util/j;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    int-to-long v0, v1

    add-long/2addr v4, v0

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x4

    const-wide/16 v0, 0x1

    sub-long v0, v8, v0

    const-wide/16 v8, 0x0

    cmp-long v8, v8, v0

    if-nez v8, :cond_14

    const/4 v3, 0x0

    const/4 v2, 0x6

    move-wide v8, v0

    goto/16 :goto_0

    :pswitch_5
    aput-char v1, v13, v10

    add-int/lit8 v0, v10, 0x1

    array-length v1, v13

    if-lt v0, v1, :cond_13

    invoke-static {v13}, Lorg/htmlparser/d/c;->a([C)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_f

    new-instance v2, Lorg/htmlparser/util/j;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v6, "incorrect checksum, expected "

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", calculated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/htmlparser/util/j;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x7

    move v10, v0

    goto/16 :goto_0

    :pswitch_6
    sget-object v0, Lorg/htmlparser/d/c;->g:[C

    aget-char v0, v0, v7

    if-ne v1, v0, :cond_10

    add-int/lit8 v0, v7, 0x1

    sget-object v1, Lorg/htmlparser/d/c;->g:[C

    array-length v1, v1

    if-lt v0, v1, :cond_12

    const/4 v0, 0x0

    sget v2, Lorg/htmlparser/d/c;->a:I

    move v7, v0

    goto/16 :goto_0

    :cond_10
    new-instance v0, Lorg/htmlparser/util/j;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "illegal character encountered: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " (\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/htmlparser/util/j;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    move v7, v0

    goto/16 :goto_0

    :cond_13
    move v10, v0

    goto/16 :goto_0

    :cond_14
    move-wide v8, v0

    goto/16 :goto_0

    :cond_15
    move-wide v8, v4

    move-wide v4, v2

    move v3, v0

    move v2, v1

    goto/16 :goto_0

    :cond_16
    move v11, v0

    goto/16 :goto_0

    :cond_17
    move v12, v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
