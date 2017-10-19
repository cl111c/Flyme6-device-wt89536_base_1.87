.class public Lcom/android/exsettings/search/Index;
.super Ljava/lang/Object;
.source "Index.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/search/Index$1;,
        Lcom/android/exsettings/search/Index$SaveSearchQueryTask;,
        Lcom/android/exsettings/search/Index$UpdateIndexTask;,
        Lcom/android/exsettings/search/Index$UpdateData;
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MATCH_COLUMNS_PRIMARY:[Ljava/lang/String;

.field private static final MATCH_COLUMNS_SECONDARY:[Ljava/lang/String;

.field private static MAX_SAVED_SEARCH_QUERY:J

.field private static final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

.field private static final SELECT_COLUMNS:[Ljava/lang/String;

.field private static sInstance:Lcom/android/exsettings/search/Index;


# instance fields
.field private final mBaseAuthority:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mDataToProcess:Lcom/android/exsettings/search/Index$UpdateData;

.field private final mIsAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data_rank"

    aput-object v1, v0, v3

    const-string v1, "data_title"

    aput-object v1, v0, v4

    const-string v1, "data_summary_on"

    aput-object v1, v0, v5

    const-string v1, "data_summary_off"

    aput-object v1, v0, v6

    const-string v1, "data_entries"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "data_keywords"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "class_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "screen_title"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "icon"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "intent_action"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "intent_target_package"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "intent_target_class"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "enabled"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "data_key_reference"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exsettings/search/Index;->SELECT_COLUMNS:[Ljava/lang/String;

    .line 131
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "data_title"

    aput-object v1, v0, v3

    const-string v1, "data_title_normalized"

    aput-object v1, v0, v4

    const-string v1, "data_keywords"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/exsettings/search/Index;->MATCH_COLUMNS_PRIMARY:[Ljava/lang/String;

    .line 137
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data_summary_on"

    aput-object v1, v0, v3

    const-string v1, "data_summary_on_normalized"

    aput-object v1, v0, v4

    const-string v1, "data_summary_off"

    aput-object v1, v0, v5

    const-string v1, "data_summary_off_normalized"

    aput-object v1, v0, v6

    const-string v1, "data_entries"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/exsettings/search/Index;->MATCH_COLUMNS_SECONDARY:[Ljava/lang/String;

    .line 146
    const-wide/16 v0, 0x40

    sput-wide v0, Lcom/android/exsettings/search/Index;->MAX_SAVED_SEARCH_QUERY:J

    .line 163
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/search/Index;->EMPTY_LIST:Ljava/util/List;

    .line 167
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/search/Index;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseAuthority"    # Ljava/lang/String;

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/exsettings/search/Index;->mIsAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 206
    new-instance v0, Lcom/android/exsettings/search/Index$UpdateData;

    invoke-direct {v0}, Lcom/android/exsettings/search/Index$UpdateData;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/search/Index;->mDataToProcess:Lcom/android/exsettings/search/Index$UpdateData;

    .line 223
    iput-object p1, p0, Lcom/android/exsettings/search/Index;->mContext:Landroid/content/Context;

    .line 224
    iput-object p2, p0, Lcom/android/exsettings/search/Index;->mBaseAuthority:Ljava/lang/String;

    .line 225
    return-void
.end method

.method static synthetic access$200(Lcom/android/exsettings/search/Index;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/search/Index;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/exsettings/search/Index;->mIsAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/exsettings/search/Index;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/search/Index;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/exsettings/search/Index;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/exsettings/search/Index;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableData;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/search/Index;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/provider/SearchIndexableData;
    .param p4, "x4"    # Ljava/util/Map;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/exsettings/search/Index;->indexOneSearchIndexableData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableData;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$500()J
    .locals 2

    .prologue
    .line 90
    sget-wide v0, Lcom/android/exsettings/search/Index;->MAX_SAVED_SEARCH_QUERY:J

    return-wide v0
.end method

.method private addIndexablesForRawDataUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;I)V
    .locals 25
    .param p1, "packageContext"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "baseRank"    # I

    .prologue
    .line 588
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 589
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 591
    .local v10, "cursor":Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 592
    const-string v2, "Index"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot add index data for Uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :goto_0
    return-void

    .line 597
    :cond_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 598
    .local v9, "count":I
    if-lez v9, :cond_2

    .line 599
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 600
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 601
    .local v16, "providerRank":I
    if-lez v16, :cond_1

    add-int v17, p5, v16

    .line 603
    .local v17, "rank":I
    :goto_2
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 604
    .local v23, "title":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 605
    .local v20, "summaryOn":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 606
    .local v19, "summaryOff":Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 607
    .local v12, "entries":Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 609
    .local v15, "keywords":Ljava/lang/String;
    const/4 v2, 0x6

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 611
    .local v18, "screenTitle":Ljava/lang/String;
    const/4 v2, 0x7

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 612
    .local v8, "className":Ljava/lang/String;
    const/16 v2, 0x8

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 614
    .local v13, "iconResId":I
    const/16 v2, 0x9

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 615
    .local v7, "action":Ljava/lang/String;
    const/16 v2, 0xa

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 617
    .local v22, "targetPackage":Ljava/lang/String;
    const/16 v2, 0xb

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 620
    .local v21, "targetClass":Ljava/lang/String;
    const/16 v2, 0xc

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 621
    .local v14, "key":Ljava/lang/String;
    const/16 v2, 0xd

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 623
    .local v24, "userId":I
    new-instance v11, Lcom/android/exsettings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 624
    .local v11, "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    move/from16 v0, v17

    iput v0, v11, Lcom/android/exsettings/search/SearchIndexableRaw;->rank:I

    .line 625
    move-object/from16 v0, v23

    iput-object v0, v11, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 626
    move-object/from16 v0, v20

    iput-object v0, v11, Lcom/android/exsettings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 627
    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/exsettings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 628
    iput-object v12, v11, Lcom/android/exsettings/search/SearchIndexableRaw;->entries:Ljava/lang/String;

    .line 629
    iput-object v15, v11, Lcom/android/exsettings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 630
    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 631
    iput-object v8, v11, Lcom/android/exsettings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 632
    move-object/from16 v0, p2

    iput-object v0, v11, Lcom/android/exsettings/search/SearchIndexableRaw;->packageName:Ljava/lang/String;

    .line 633
    iput v13, v11, Lcom/android/exsettings/search/SearchIndexableRaw;->iconResId:I

    .line 634
    iput-object v7, v11, Lcom/android/exsettings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    .line 635
    move-object/from16 v0, v22

    iput-object v0, v11, Lcom/android/exsettings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    .line 636
    move-object/from16 v0, v21

    iput-object v0, v11, Lcom/android/exsettings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    .line 637
    iput-object v14, v11, Lcom/android/exsettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 638
    move/from16 v0, v24

    iput v0, v11, Lcom/android/exsettings/search/SearchIndexableRaw;->userId:I

    .line 640
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/exsettings/search/Index;->addIndexableData(Landroid/provider/SearchIndexableData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 644
    .end local v7    # "action":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "count":I
    .end local v11    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    .end local v12    # "entries":Ljava/lang/String;
    .end local v13    # "iconResId":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "keywords":Ljava/lang/String;
    .end local v16    # "providerRank":I
    .end local v17    # "rank":I
    .end local v18    # "screenTitle":Ljava/lang/String;
    .end local v19    # "summaryOff":Ljava/lang/String;
    .end local v20    # "summaryOn":Ljava/lang/String;
    .end local v21    # "targetClass":Ljava/lang/String;
    .end local v22    # "targetPackage":Ljava/lang/String;
    .end local v23    # "title":Ljava/lang/String;
    .end local v24    # "userId":I
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v9    # "count":I
    .restart local v16    # "providerRank":I
    :cond_1
    move/from16 v17, p5

    .line 601
    goto/16 :goto_2

    .line 644
    .end local v16    # "providerRank":I
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private addIndexablesForXmlResourceUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;I)V
    .locals 18
    .param p1, "packageContext"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "baseRank"    # I

    .prologue
    .line 541
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 542
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 544
    .local v10, "cursor":Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 545
    const-string v2, "Index"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot add index data for Uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :goto_0
    return-void

    .line 550
    :cond_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 551
    .local v9, "count":I
    if-lez v9, :cond_2

    .line 552
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 553
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 554
    .local v12, "providerRank":I
    if-lez v12, :cond_1

    add-int v13, p5, v12

    .line 556
    .local v13, "rank":I
    :goto_2
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 558
    .local v17, "xmlResId":I
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 559
    .local v8, "className":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 561
    .local v11, "iconResId":I
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 562
    .local v7, "action":Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 564
    .local v16, "targetPackage":Ljava/lang/String;
    const/4 v2, 0x6

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 567
    .local v15, "targetClass":Ljava/lang/String;
    new-instance v14, Landroid/provider/SearchIndexableResource;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 568
    .local v14, "sir":Landroid/provider/SearchIndexableResource;
    iput v13, v14, Landroid/provider/SearchIndexableResource;->rank:I

    .line 569
    move/from16 v0, v17

    iput v0, v14, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 570
    iput-object v8, v14, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 571
    move-object/from16 v0, p2

    iput-object v0, v14, Landroid/provider/SearchIndexableResource;->packageName:Ljava/lang/String;

    .line 572
    iput v11, v14, Landroid/provider/SearchIndexableResource;->iconResId:I

    .line 573
    iput-object v7, v14, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    .line 574
    move-object/from16 v0, v16

    iput-object v0, v14, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    .line 575
    iput-object v15, v14, Landroid/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;

    .line 577
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/exsettings/search/Index;->addIndexableData(Landroid/provider/SearchIndexableData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 581
    .end local v7    # "action":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "count":I
    .end local v11    # "iconResId":I
    .end local v12    # "providerRank":I
    .end local v13    # "rank":I
    .end local v14    # "sir":Landroid/provider/SearchIndexableResource;
    .end local v15    # "targetClass":Ljava/lang/String;
    .end local v16    # "targetPackage":Ljava/lang/String;
    .end local v17    # "xmlResId":I
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v9    # "count":I
    .restart local v12    # "providerRank":I
    :cond_1
    move/from16 v13, p5

    .line 554
    goto :goto_2

    .line 581
    .end local v12    # "providerRank":I
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private addIndexablesFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;

    .prologue
    .line 325
    :try_start_0
    invoke-static {p2}, Lcom/android/exsettings/search/Ranking;->getBaseRankForAuthority(Ljava/lang/String;)I

    move-result v5

    .line 327
    .local v5, "baseRank":I
    iget-object v0, p0, Lcom/android/exsettings/search/Index;->mBaseAuthority:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/search/Index;->mContext:Landroid/content/Context;

    .line 330
    .local v1, "context":Landroid/content/Context;
    :goto_0
    invoke-static {p2}, Lcom/android/exsettings/search/Index;->buildUriForXmlResources(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 331
    .local v3, "uriForResources":Landroid/net/Uri;
    sget-object v4, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/search/Index;->addIndexablesForXmlResourceUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;I)V

    .line 334
    invoke-static {p2}, Lcom/android/exsettings/search/Index;->buildUriForRawData(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 335
    .local v9, "uriForRawData":Landroid/net/Uri;
    sget-object v10, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    move-object v6, p0

    move-object v7, v1

    move-object v8, p1

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/exsettings/search/Index;->addIndexablesForRawDataUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;I)V

    .line 337
    const/4 v0, 0x1

    .line 341
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "uriForResources":Landroid/net/Uri;
    .end local v5    # "baseRank":I
    .end local v9    # "uriForRawData":Landroid/net/Uri;
    :goto_1
    return v0

    .line 327
    .restart local v5    # "baseRank":I
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/search/Index;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 338
    .end local v5    # "baseRank":I
    :catch_0
    move-exception v12

    .line 339
    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, "Index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create context for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private addNonIndexablesKeysFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;

    .prologue
    .line 347
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/search/Index;->getNonIndexablesKeysFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 349
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, v0}, Lcom/android/exsettings/search/Index;->addNonIndexableKeys(Ljava/lang/String;Ljava/util/List;)V

    .line 350
    return-void
.end method

.method private buildSearchMatchStringForColumns(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 691
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 692
    .local v3, "value":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 693
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v0, p2

    .line 694
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 695
    aget-object v4, p2, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    add-int/lit8 v4, v0, -0x1

    if-ge v1, v4, :cond_0

    .line 699
    const-string v4, " OR "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 702
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private buildSearchSQL(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "colums"    # [Ljava/lang/String;
    .param p3, "withOrderBy"    # Z

    .prologue
    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 650
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/search/Index;->buildSearchSQLForColumn(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    if-eqz p3, :cond_0

    .line 652
    const-string v1, " ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    const-string v1, "data_rank"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private buildSearchSQLForColumn(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 659
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 660
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    sget-object v2, Lcom/android/exsettings/search/Index;->SELECT_COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 662
    sget-object v2, Lcom/android/exsettings/search/Index;->SELECT_COLUMNS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    sget-object v2, Lcom/android/exsettings/search/Index;->SELECT_COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 664
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 667
    :cond_1
    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    const-string v2, "prefs_index"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/search/Index;->buildSearchWhereStringForColumns(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private buildSearchWhereStringForColumns(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "prefs_index"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 677
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " MATCH "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/search/Index;->buildSearchMatchStringForColumns(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 680
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    const-string v1, "locale"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 684
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    const-string v1, "enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    const-string v1, " = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private buildSuggestionsSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string v1, "query"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const-string v1, "saved_queries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    const-string v1, " ORDER BY rowId DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :goto_0
    const-string v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 273
    :cond_0
    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string v1, "query"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const-string v1, " LIKE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static buildUriForNonIndexableKeys(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "settings/non_indexables_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static buildUriForRawData(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "settings/indexables_raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static buildUriForXmlResources(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "settings/indexables_xml_res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I
    .param p4, "resId"    # I

    .prologue
    .line 1109
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1110
    .local v1, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v1, p4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 1112
    .local v2, "tv":Landroid/util/TypedValue;
    const/4 v0, 0x0

    .line 1113
    .local v0, "data":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1114
    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_1

    .line 1115
    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1120
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    .line 1117
    :cond_1
    iget-object v0, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1120
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getDataEntries(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1099
    sget-object v0, Lcom/android/internal/R$styleable;->ListPreference:[I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exsettings/search/Index;->getDataEntries(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataEntries(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I
    .param p4, "resId"    # I

    .prologue
    .line 1124
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 1125
    .local v4, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v4, p4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 1127
    .local v5, "tv":Landroid/util/TypedValue;
    const/4 v1, 0x0

    .line 1128
    .local v1, "data":[Ljava/lang/String;
    if-eqz v5, :cond_0

    iget v6, v5, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1129
    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_0

    .line 1130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1133
    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 1134
    .local v0, "count":I
    :goto_0
    if-nez v0, :cond_2

    .line 1135
    const/4 v6, 0x0

    .line 1142
    :goto_1
    return-object v6

    .line 1133
    .end local v0    # "count":I
    :cond_1
    array-length v0, v1

    goto :goto_0

    .line 1137
    .restart local v0    # "count":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1138
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 1139
    aget-object v6, v1, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    const-string v6, "|"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1142
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method private getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1069
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v1, 0x6

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exsettings/search/Index;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataKeywords(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1105
    sget-object v0, Lcom/android/exsettings/R$styleable;->Preference:[I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exsettings/search/Index;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1081
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v1, 0x7

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exsettings/search/Index;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataSummaryOff(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1093
    sget-object v0, Lcom/android/internal/R$styleable;->CheckBoxPreference:[I

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exsettings/search/Index;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataSummaryOn(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1087
    sget-object v0, Lcom/android/internal/R$styleable;->CheckBoxPreference:[I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exsettings/search/Index;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1075
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exsettings/search/Index;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIndexableClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 746
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 751
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcom/android/exsettings/search/Index;->isIndexableClass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v0

    .line 747
    :catch_0
    move-exception v1

    .line 748
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "Index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 749
    goto :goto_0

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    move-object v0, v2

    .line 751
    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/exsettings/search/Index;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 214
    sget-object v0, Lcom/android/exsettings/search/Index;->sInstance:Lcom/android/exsettings/search/Index;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Lcom/android/exsettings/search/Index;

    const-string v1, "com.android.settings"

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/search/Index;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/exsettings/search/Index;->sInstance:Lcom/android/exsettings/search/Index;

    .line 219
    :goto_0
    sget-object v0, Lcom/android/exsettings/search/Index;->sInstance:Lcom/android/exsettings/search/Index;

    return-object v0

    .line 217
    :cond_0
    sget-object v0, Lcom/android/exsettings/search/Index;->sInstance:Lcom/android/exsettings/search/Index;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/search/Index;->setContext(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private getNonIndexablesKeys(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "packageContext"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 370
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "resolver":Landroid/content/ContentResolver;
    move-object v1, p2

    move-object v2, p3

    move-object v4, v3

    move-object v5, v3

    .line 371
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 373
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 374
    const-string v1, "Index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot add index data for Uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    sget-object v9, Lcom/android/exsettings/search/Index;->EMPTY_LIST:Ljava/util/List;

    .line 389
    :goto_0
    return-object v9

    .line 378
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 381
    .local v6, "count":I
    if-lez v6, :cond_1

    .line 382
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 383
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 384
    .local v8, "key":Ljava/lang/String;
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 389
    .end local v6    # "count":I
    .end local v8    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .restart local v6    # "count":I
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getNonIndexablesKeysFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    :try_start_0
    iget-object v3, p0, Lcom/android/exsettings/search/Index;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 357
    .local v1, "packageContext":Landroid/content/Context;
    invoke-static {p2}, Lcom/android/exsettings/search/Index;->buildUriForNonIndexableKeys(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 358
    .local v2, "uriForNonIndexableKeys":Landroid/net/Uri;
    sget-object v3, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/exsettings/search/Index;->getNonIndexablesKeys(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 363
    .end local v1    # "packageContext":Landroid/content/Context;
    .end local v2    # "uriForNonIndexableKeys":Landroid/net/Uri;
    :goto_0
    return-object v3

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create context for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    sget-object v3, Lcom/android/exsettings/search/Index;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0
.end method

.method private getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/exsettings/search/Index;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/exsettings/search/IndexDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/exsettings/search/IndexDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exsettings/search/IndexDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private getSearchIndexProvider(Ljava/lang/Class;)Lcom/android/exsettings/search/Indexable$SearchIndexProvider;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/android/exsettings/search/Indexable$SearchIndexProvider;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 804
    :try_start_0
    const-string v3, "SEARCH_INDEX_DATA_PROVIDER"

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 805
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/exsettings/search/Indexable$SearchIndexProvider;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 819
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :goto_0
    return-object v3

    .line 806
    :catch_0
    move-exception v0

    .line 807
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v3, "Index"

    const-string v5, "Cannot find field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_1
    move-object v3, v4

    .line 819
    goto :goto_0

    .line 808
    :catch_1
    move-exception v2

    .line 809
    .local v2, "se":Ljava/lang/SecurityException;
    const-string v3, "Index"

    const-string v5, "Security exception for field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 811
    .end local v2    # "se":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 812
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "Index"

    const-string v5, "Illegal access to field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 814
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 815
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Index"

    const-string v5, "Illegal argument when accessing field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 507
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettings/search/Index;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/exsettings/search/IndexDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/exsettings/search/IndexDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exsettings/search/IndexDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 510
    :goto_0
    return-object v1

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "Index"

    const-string v2, "Cannot open writable database"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private indexFromProvider(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/exsettings/search/Indexable$SearchIndexProvider;Ljava/lang/String;IIZLjava/util/List;)V
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "localeStr"    # Ljava/lang/String;
    .param p4, "provider"    # Lcom/android/exsettings/search/Indexable$SearchIndexProvider;
    .param p5, "className"    # Ljava/lang/String;
    .param p6, "iconResId"    # I
    .param p7, "rank"    # I
    .param p8, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Lcom/android/exsettings/search/Indexable$SearchIndexProvider;",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 926
    .local p9, "nonIndexableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p4, :cond_1

    .line 927
    const-string v3, "Index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_0
    return-void

    .line 931
    :cond_1
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move/from16 v2, p8

    invoke-interface {v0, v1, v2}, Lcom/android/exsettings/search/Indexable$SearchIndexProvider;->getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v24

    .line 933
    .local v24, "rawList":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/search/SearchIndexableRaw;>;"
    if-eqz v24, :cond_4

    .line 934
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v25

    .line 935
    .local v25, "rawSize":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    .line 936
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/exsettings/search/SearchIndexableRaw;

    .line 939
    .local v23, "raw":Lcom/android/exsettings/search/SearchIndexableRaw;
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 935
    :cond_2
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 943
    :cond_3
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v0, p9

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 947
    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->entries:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v11, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v14, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v15, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->enabled:Z

    move/from16 v18, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->userId:I

    move/from16 v20, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v10, p5

    move/from16 v12, p6

    move/from16 v13, p7

    invoke-direct/range {v3 .. v20}, Lcom/android/exsettings/search/Index;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    goto :goto_1

    .line 966
    .end local v21    # "i":I
    .end local v23    # "raw":Lcom/android/exsettings/search/SearchIndexableRaw;
    .end local v25    # "rawSize":I
    :cond_4
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move/from16 v2, p8

    invoke-interface {v0, v1, v2}, Lcom/android/exsettings/search/Indexable$SearchIndexProvider;->getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v26

    .line 968
    .local v26, "resList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    if-eqz v26, :cond_0

    .line 969
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v27

    .line 970
    .local v27, "resSize":I
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    .line 971
    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/provider/SearchIndexableResource;

    .line 974
    .local v22, "item":Landroid/provider/SearchIndexableResource;
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/provider/SearchIndexableResource;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 970
    :goto_3
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 978
    :cond_5
    move-object/from16 v0, v22

    iget v3, v0, Landroid/provider/SearchIndexableResource;->iconResId:I

    if-nez v3, :cond_6

    move/from16 v9, p6

    .line 979
    .local v9, "itemIconResId":I
    :goto_4
    move-object/from16 v0, v22

    iget v3, v0, Landroid/provider/SearchIndexableResource;->rank:I

    if-nez v3, :cond_7

    move/from16 v10, p7

    .line 980
    .local v10, "itemRank":I
    :goto_5
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v8, p5

    .line 983
    .local v8, "itemClassName":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, v22

    iget v7, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    move-object/from16 v0, v22

    iget-object v11, v0, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v12, v0, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v13, v0, Landroid/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v14, p9

    invoke-direct/range {v3 .. v14}, Lcom/android/exsettings/search/Index;->indexFromResource(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    .line 978
    .end local v8    # "itemClassName":Ljava/lang/String;
    .end local v9    # "itemIconResId":I
    .end local v10    # "itemRank":I
    :cond_6
    move-object/from16 v0, v22

    iget v9, v0, Landroid/provider/SearchIndexableResource;->iconResId:I

    goto :goto_4

    .line 979
    .restart local v9    # "itemIconResId":I
    :cond_7
    move-object/from16 v0, v22

    iget v10, v0, Landroid/provider/SearchIndexableResource;->rank:I

    goto :goto_5

    .line 980
    .restart local v10    # "itemRank":I
    :cond_8
    move-object/from16 v0, v22

    iget-object v8, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    goto :goto_6
.end method

.method private indexFromResource(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 44
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "localeStr"    # Ljava/lang/String;
    .param p4, "xmlResId"    # I
    .param p5, "fragmentName"    # Ljava/lang/String;
    .param p6, "iconResId"    # I
    .param p7, "rank"    # I
    .param p8, "intentAction"    # Ljava/lang/String;
    .param p9, "intentTargetPackage"    # Ljava/lang/String;
    .param p10, "intentTargetClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 827
    .local p11, "nonIndexableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v42, 0x0

    .line 829
    .local v42, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v42

    .line 833
    :cond_0
    invoke-interface/range {v42 .. v42}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v43

    .local v43, "type":I
    const/4 v3, 0x1

    move/from16 v0, v43

    if-eq v0, v3, :cond_1

    const/4 v3, 0x2

    move/from16 v0, v43

    if-ne v0, v3, :cond_0

    .line 837
    :cond_1
    invoke-interface/range {v42 .. v42}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v40

    .line 838
    .local v40, "nodeName":Ljava/lang/String;
    const-string v3, "PreferenceScreen"

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 839
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XML document must start with <PreferenceScreen> tag; found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v42 .. v42}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    .end local v40    # "nodeName":Ljava/lang/String;
    .end local v43    # "type":I
    :catch_0
    move-exception v39

    .line 914
    .local v39, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error parsing PreferenceScreen"

    move-object/from16 v0, v39

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 918
    .end local v39    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    if-eqz v42, :cond_2

    invoke-interface/range {v42 .. v42}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v3

    .line 844
    .restart local v40    # "nodeName":Ljava/lang/String;
    .restart local v43    # "type":I
    :cond_3
    :try_start_2
    invoke-interface/range {v42 .. v42}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v41

    .line 845
    .local v41, "outerDepth":I
    invoke-static/range {v42 .. v42}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v38

    .line 847
    .local v38, "attrs":Landroid/util/AttributeSet;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/search/Index;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v11

    .line 849
    .local v11, "screenTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/search/Index;->getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v19

    .line 857
    .local v19, "key":Ljava/lang/String;
    move-object/from16 v0, p11

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 858
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/search/Index;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v6

    .line 859
    .local v6, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/search/Index;->getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v7

    .line 860
    .local v7, "summary":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/search/Index;->getDataKeywords(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v14

    .line 862
    .local v14, "keywords":Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v18, 0x1

    const/16 v20, -0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v10, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    invoke-direct/range {v3 .. v20}, Lcom/android/exsettings/search/Index;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 869
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "summary":Ljava/lang/String;
    .end local v14    # "keywords":Ljava/lang/String;
    :cond_4
    :goto_0
    invoke-interface/range {v42 .. v42}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v43

    const/4 v3, 0x1

    move/from16 v0, v43

    if-eq v0, v3, :cond_9

    const/4 v3, 0x3

    move/from16 v0, v43

    if-ne v0, v3, :cond_5

    invoke-interface/range {v42 .. v42}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    move/from16 v0, v41

    if-le v3, v0, :cond_9

    .line 870
    :cond_5
    const/4 v3, 0x3

    move/from16 v0, v43

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    move/from16 v0, v43

    if-eq v0, v3, :cond_4

    .line 874
    invoke-interface/range {v42 .. v42}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v40

    .line 876
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/search/Index;->getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v19

    .line 877
    move-object/from16 v0, p11

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 881
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/search/Index;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v6

    .line 882
    .restart local v6    # "title":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/search/Index;->getDataKeywords(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v14

    .line 884
    .restart local v14    # "keywords":Ljava/lang/String;
    const-string v3, "CheckBoxPreference"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 885
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/search/Index;->getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v7

    .line 887
    .restart local v7    # "summary":Ljava/lang/String;
    const/4 v9, 0x0

    .line 889
    .local v9, "entries":Ljava/lang/String;
    const-string v3, "ListPreference"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 890
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/search/Index;->getDataEntries(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v9

    .line 894
    :cond_6
    const/4 v8, 0x0

    const/16 v18, 0x1

    const/16 v20, -0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v10, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    invoke-direct/range {v3 .. v20}, Lcom/android/exsettings/search/Index;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 915
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "summary":Ljava/lang/String;
    .end local v9    # "entries":Ljava/lang/String;
    .end local v11    # "screenTitle":Ljava/lang/String;
    .end local v14    # "keywords":Ljava/lang/String;
    .end local v19    # "key":Ljava/lang/String;
    .end local v38    # "attrs":Landroid/util/AttributeSet;
    .end local v40    # "nodeName":Ljava/lang/String;
    .end local v41    # "outerDepth":I
    .end local v43    # "type":I
    :catch_1
    move-exception v39

    .line 916
    .local v39, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error parsing PreferenceScreen"

    move-object/from16 v0, v39

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 899
    .end local v39    # "e":Ljava/io/IOException;
    .restart local v6    # "title":Ljava/lang/String;
    .restart local v11    # "screenTitle":Ljava/lang/String;
    .restart local v14    # "keywords":Ljava/lang/String;
    .restart local v19    # "key":Ljava/lang/String;
    .restart local v38    # "attrs":Landroid/util/AttributeSet;
    .restart local v40    # "nodeName":Ljava/lang/String;
    .restart local v41    # "outerDepth":I
    .restart local v43    # "type":I
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/search/Index;->getDataSummaryOn(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v24

    .line 900
    .local v24, "summaryOn":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/search/Index;->getDataSummaryOff(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v25

    .line 902
    .local v25, "summaryOff":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 903
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/search/Index;->getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v24

    .line 906
    :cond_8
    const/16 v26, 0x0

    const/16 v35, 0x1

    const/16 v37, -0x1

    move-object/from16 v20, p0

    move-object/from16 v21, p2

    move-object/from16 v22, p3

    move-object/from16 v23, v6

    move-object/from16 v27, p5

    move-object/from16 v28, v11

    move/from16 v29, p6

    move/from16 v30, p7

    move-object/from16 v31, v14

    move-object/from16 v32, p8

    move-object/from16 v33, p9

    move-object/from16 v34, p10

    move-object/from16 v36, v19

    invoke-direct/range {v20 .. v37}, Lcom/android/exsettings/search/Index;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 918
    .end local v6    # "title":Ljava/lang/String;
    .end local v14    # "keywords":Ljava/lang/String;
    .end local v24    # "summaryOn":Ljava/lang/String;
    .end local v25    # "summaryOff":Ljava/lang/String;
    :cond_9
    if-eqz v42, :cond_a

    invoke-interface/range {v42 .. v42}, Landroid/content/res/XmlResourceParser;->close()V

    .line 920
    :cond_a
    return-void
.end method

.method private indexOneRaw(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/exsettings/search/SearchIndexableRaw;)V
    .locals 19
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "localeStr"    # Ljava/lang/String;
    .param p3, "raw"    # Lcom/android/exsettings/search/SearchIndexableRaw;

    .prologue
    .line 717
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 737
    :goto_0
    return-void

    .line 721
    :cond_0
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->entries:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v10, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->iconResId:I

    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->rank:I

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->enabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->userId:I

    move/from16 v18, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v18}, Lcom/android/exsettings/search/Index;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    goto :goto_0
.end method

.method private indexOneResource(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableResource;Ljava/util/Map;)V
    .locals 16
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "localeStr"    # Ljava/lang/String;
    .param p3, "sir"    # Landroid/provider/SearchIndexableResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Landroid/provider/SearchIndexableResource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 757
    .local p4, "nonIndexableKeysFromResource":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez p3, :cond_1

    .line 758
    const-string v1, "Index"

    const-string v2, "Cannot index a null resource!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 764
    .local v12, "nonIndexableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p3

    iget v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    sget v2, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    if-le v1, v2, :cond_3

    .line 765
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/provider/SearchIndexableResource;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    .line 766
    .local v15, "resNonIndxableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_2

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 767
    invoke-interface {v12, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 770
    :cond_2
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/provider/SearchIndexableResource;->context:Landroid/content/Context;

    move-object/from16 v0, p3

    iget v5, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    move-object/from16 v0, p3

    iget-object v6, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v7, v0, Landroid/provider/SearchIndexableResource;->iconResId:I

    move-object/from16 v0, p3

    iget v8, v0, Landroid/provider/SearchIndexableResource;->rank:I

    move-object/from16 v0, p3

    iget-object v9, v0, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v12}, Lcom/android/exsettings/search/Index;->indexFromResource(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 775
    .end local v15    # "resNonIndxableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 776
    const-string v1, "Index"

    const-string v2, "Cannot index an empty Search Provider name!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 780
    :cond_4
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/exsettings/search/Index;->getIndexableClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 781
    .local v13, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v13, :cond_5

    .line 782
    const-string v1, "Index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SearchIndexableResource \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' should implement the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/android/exsettings/search/Indexable;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " interface!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 789
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/exsettings/search/Index;->getSearchIndexProvider(Ljava/lang/Class;)Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    move-result-object v7

    .line 790
    .local v7, "provider":Lcom/android/exsettings/search/Indexable$SearchIndexProvider;
    if-eqz v7, :cond_0

    .line 791
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/provider/SearchIndexableResource;->context:Landroid/content/Context;

    invoke-interface {v7, v1}, Lcom/android/exsettings/search/Indexable$SearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v14

    .line 792
    .local v14, "providerNonIndexableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v14, :cond_6

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 793
    invoke-interface {v12, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 796
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/search/Index;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    iget-object v8, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v9, v0, Landroid/provider/SearchIndexableResource;->iconResId:I

    move-object/from16 v0, p3

    iget v10, v0, Landroid/provider/SearchIndexableResource;->rank:I

    move-object/from16 v0, p3

    iget-boolean v11, v0, Landroid/provider/SearchIndexableResource;->enabled:Z

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v12}, Lcom/android/exsettings/search/Index;->indexFromProvider(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/exsettings/search/Indexable$SearchIndexProvider;Ljava/lang/String;IIZLjava/util/List;)V

    goto/16 :goto_0
.end method

.method private indexOneSearchIndexableData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableData;Ljava/util/Map;)V
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "localeStr"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/provider/SearchIndexableData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Landroid/provider/SearchIndexableData;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 707
    .local p4, "nonIndexableKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    instance-of v0, p3, Landroid/provider/SearchIndexableResource;

    if-eqz v0, :cond_1

    .line 708
    check-cast p3, Landroid/provider/SearchIndexableResource;

    .end local p3    # "data":Landroid/provider/SearchIndexableData;
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/exsettings/search/Index;->indexOneResource(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableResource;Ljava/util/Map;)V

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 709
    .restart local p3    # "data":Landroid/provider/SearchIndexableData;
    :cond_1
    instance-of v0, p3, Lcom/android/exsettings/search/SearchIndexableRaw;

    if-eqz v0, :cond_0

    .line 710
    check-cast p3, Lcom/android/exsettings/search/SearchIndexableRaw;

    .end local p3    # "data":Landroid/provider/SearchIndexableData;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exsettings/search/Index;->indexOneRaw(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/exsettings/search/SearchIndexableRaw;)V

    goto :goto_0
.end method

.method private static isIndexableClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 740
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    const-class v0, Lcom/android/exsettings/search/Indexable;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPrivilegedPackage(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 450
    iget-object v4, p0, Lcom/android/exsettings/search/Index;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 452
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 453
    .local v1, "packInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 456
    .end local v1    # "packInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v3

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private isWellKnownProvider(Landroid/content/pm/ResolveInfo;)Z
    .locals 6
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v4, 0x0

    .line 427
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v0, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 428
    .local v0, "authority":Ljava/lang/String;
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 430
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 446
    :cond_0
    :goto_0
    return v4

    .line 434
    :cond_1
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v5, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 435
    .local v2, "readPermission":Ljava/lang/String;
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v5, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 437
    .local v3, "writePermission":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 441
    const-string v5, "android.permission.READ_SEARCH_INDEXABLES"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "android.permission.READ_SEARCH_INDEXABLES"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 446
    invoke-direct {p0, v1}, Lcom/android/exsettings/search/Index;->isPrivilegedPackage(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0
.end method

.method private static normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 1015
    if-eqz p0, :cond_0

    const-string v0, "\u2011"

    const-string v1, "-"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static normalizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 1019
    if-eqz p0, :cond_0

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1020
    .local v0, "nohyphen":Ljava/lang/String;
    :goto_0
    sget-object v2, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {v0, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v1

    .line 1022
    .local v1, "normalized":Ljava/lang/String;
    sget-object v2, Lcom/android/exsettings/search/Index;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1019
    .end local v0    # "nohyphen":Ljava/lang/String;
    .end local v1    # "normalized":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private updateInternal()V
    .locals 5

    .prologue
    .line 530
    iget-object v3, p0, Lcom/android/exsettings/search/Index;->mDataToProcess:Lcom/android/exsettings/search/Index$UpdateData;

    monitor-enter v3

    .line 531
    :try_start_0
    new-instance v1, Lcom/android/exsettings/search/Index$UpdateIndexTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/exsettings/search/Index$UpdateIndexTask;-><init>(Lcom/android/exsettings/search/Index;Lcom/android/exsettings/search/Index$1;)V

    .line 532
    .local v1, "task":Lcom/android/exsettings/search/Index$UpdateIndexTask;
    iget-object v2, p0, Lcom/android/exsettings/search/Index;->mDataToProcess:Lcom/android/exsettings/search/Index$UpdateData;

    invoke-virtual {v2}, Lcom/android/exsettings/search/Index$UpdateData;->copy()Lcom/android/exsettings/search/Index$UpdateData;

    move-result-object v0

    .line 533
    .local v0, "copy":Lcom/android/exsettings/search/Index$UpdateData;
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/exsettings/search/Index$UpdateData;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/exsettings/search/Index$UpdateIndexTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 534
    iget-object v2, p0, Lcom/android/exsettings/search/Index;->mDataToProcess:Lcom/android/exsettings/search/Index$UpdateData;

    invoke-virtual {v2}, Lcom/android/exsettings/search/Index$UpdateData;->clear()V

    .line 535
    monitor-exit v3

    .line 536
    return-void

    .line 535
    .end local v0    # "copy":Lcom/android/exsettings/search/Index$UpdateData;
    .end local v1    # "task":Lcom/android/exsettings/search/Index$UpdateIndexTask;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private updateOneRow(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 6
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "updatedTitle"    # Ljava/lang/String;
    .param p4, "normalizedTitle"    # Ljava/lang/String;
    .param p5, "updatedSummaryOn"    # Ljava/lang/String;
    .param p6, "normalizedSummaryOn"    # Ljava/lang/String;
    .param p7, "updatedSummaryOff"    # Ljava/lang/String;
    .param p8, "normalizedSummaryOff"    # Ljava/lang/String;
    .param p9, "entries"    # Ljava/lang/String;
    .param p10, "className"    # Ljava/lang/String;
    .param p11, "screenTitle"    # Ljava/lang/String;
    .param p12, "iconResId"    # I
    .param p13, "rank"    # I
    .param p14, "keywords"    # Ljava/lang/String;
    .param p15, "intentAction"    # Ljava/lang/String;
    .param p16, "intentTargetPackage"    # Ljava/lang/String;
    .param p17, "intentTargetClass"    # Ljava/lang/String;
    .param p18, "enabled"    # Z
    .param p19, "key"    # Ljava/lang/String;
    .param p20, "userId"    # I

    .prologue
    .line 1033
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1066
    :goto_0
    return-void

    .line 1039
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1040
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 1043
    .local v1, "docId":I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1044
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "docid"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1045
    const-string v4, "locale"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    const-string v4, "data_rank"

    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1047
    const-string v4, "data_title"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    const-string v4, "data_title_normalized"

    invoke-virtual {v3, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    const-string v4, "data_summary_on"

    invoke-virtual {v3, v4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    const-string v4, "data_summary_on_normalized"

    invoke-virtual {v3, v4, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    const-string v4, "data_summary_off"

    invoke-virtual {v3, v4, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    const-string v4, "data_summary_off_normalized"

    invoke-virtual {v3, v4, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    const-string v4, "data_entries"

    invoke-virtual {v3, v4, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    const-string v4, "data_keywords"

    move-object/from16 v0, p14

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    const-string v4, "class_name"

    move-object/from16 v0, p10

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    const-string v4, "screen_title"

    move-object/from16 v0, p11

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    const-string v4, "intent_action"

    move-object/from16 v0, p15

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    const-string v4, "intent_target_package"

    move-object/from16 v0, p16

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    const-string v4, "intent_target_class"

    move-object/from16 v0, p17

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    const-string v4, "icon"

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1061
    const-string v4, "enabled"

    invoke-static/range {p18 .. p18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1062
    const-string v4, "data_key_reference"

    move-object/from16 v0, p19

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    const-string v4, "user_id"

    invoke-static/range {p20 .. p20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1065
    const-string v4, "prefs_index"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0
.end method

.method private updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 21
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "summaryOn"    # Ljava/lang/String;
    .param p5, "summaryOff"    # Ljava/lang/String;
    .param p6, "entries"    # Ljava/lang/String;
    .param p7, "className"    # Ljava/lang/String;
    .param p8, "screenTitle"    # Ljava/lang/String;
    .param p9, "iconResId"    # I
    .param p10, "rank"    # I
    .param p11, "keywords"    # Ljava/lang/String;
    .param p12, "intentAction"    # Ljava/lang/String;
    .param p13, "intentTargetPackage"    # Ljava/lang/String;
    .param p14, "intentTargetClass"    # Ljava/lang/String;
    .param p15, "enabled"    # Z
    .param p16, "key"    # Ljava/lang/String;
    .param p17, "userId"    # I

    .prologue
    .line 998
    invoke-static/range {p3 .. p3}, Lcom/android/exsettings/search/Index;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 999
    .local v3, "updatedTitle":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/android/exsettings/search/Index;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1000
    .local v5, "updatedSummaryOn":Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Lcom/android/exsettings/search/Index;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1002
    .local v7, "updatedSummaryOff":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/exsettings/search/Index;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1003
    .local v4, "normalizedTitle":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/exsettings/search/Index;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1004
    .local v6, "normalizedSummaryOn":Ljava/lang/String;
    invoke-static {v7}, Lcom/android/exsettings/search/Index;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "normalizedSummaryOff":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move/from16 v18, p15

    move-object/from16 v19, p16

    move/from16 v20, p17

    .line 1006
    invoke-direct/range {v0 .. v20}, Lcom/android/exsettings/search/Index;->updateOneRow(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 1012
    return-void
.end method


# virtual methods
.method public addIndexableData(Landroid/provider/SearchIndexableData;)V
    .locals 2
    .param p1, "data"    # Landroid/provider/SearchIndexableData;

    .prologue
    .line 394
    iget-object v1, p0, Lcom/android/exsettings/search/Index;->mDataToProcess:Lcom/android/exsettings/search/Index$UpdateData;

    monitor-enter v1

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/android/exsettings/search/Index;->mDataToProcess:Lcom/android/exsettings/search/Index$UpdateData;

    iget-object v0, v0, Lcom/android/exsettings/search/Index$UpdateData;->dataToUpdate:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    monitor-exit v1

    .line 397
    return-void

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addNonIndexableKeys(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/exsettings/search/Index;->mDataToProcess:Lcom/android/exsettings/search/Index$UpdateData;

    monitor-enter v1

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/android/exsettings/search/Index;->mDataToProcess:Lcom/android/exsettings/search/Index$UpdateData;

    iget-object v0, v0, Lcom/android/exsettings/search/Index$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    monitor-exit v1

    .line 418
    return-void

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addSavedQuery(Ljava/lang/String;)J
    .locals 7
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, -0x1

    .line 289
    new-instance v1, Lcom/android/exsettings/search/Index$SaveSearchQueryTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/exsettings/search/Index$SaveSearchQueryTask;-><init>(Lcom/android/exsettings/search/Index;Lcom/android/exsettings/search/Index$1;)V

    .line 290
    .local v1, "task":Lcom/android/exsettings/search/Index$SaveSearchQueryTask;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/exsettings/search/Index$SaveSearchQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 292
    :try_start_0
    invoke-virtual {v1}, Lcom/android/exsettings/search/Index$SaveSearchQueryTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 298
    :goto_0
    return-wide v2

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "Index"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot insert saved query: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v2, v4

    .line 295
    goto :goto_0

    .line 296
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 297
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v2, "Index"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot insert saved query: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v2, v4

    .line 298
    goto :goto_0
.end method

.method public deleteIndexableData(Landroid/provider/SearchIndexableData;)V
    .locals 2
    .param p1, "data"    # Landroid/provider/SearchIndexableData;

    .prologue
    .line 409
    iget-object v1, p0, Lcom/android/exsettings/search/Index;->mDataToProcess:Lcom/android/exsettings/search/Index$UpdateData;

    monitor-enter v1

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/android/exsettings/search/Index;->mDataToProcess:Lcom/android/exsettings/search/Index$UpdateData;

    iget-object v0, v0, Lcom/android/exsettings/search/Index$UpdateData;->dataToDelete:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    monitor-exit v1

    .line 412
    return-void

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSuggestions(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/android/exsettings/search/Index;->buildSuggestionsSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "sql":Ljava/lang/String;
    const-string v1, "Index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Suggestions query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-direct {p0}, Lcom/android/exsettings/search/Index;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public search(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 236
    invoke-direct {p0}, Lcom/android/exsettings/search/Index;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 237
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x2

    new-array v0, v5, [Landroid/database/Cursor;

    .line 239
    .local v0, "cursors":[Landroid/database/Cursor;
    sget-object v5, Lcom/android/exsettings/search/Index;->MATCH_COLUMNS_PRIMARY:[Ljava/lang/String;

    invoke-direct {p0, p1, v5, v9}, Lcom/android/exsettings/search/Index;->buildSearchSQL(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "primarySql":Ljava/lang/String;
    const-string v5, "Index"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Search primary query: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {v1, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    aput-object v5, v0, v8

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/exsettings/search/Index;->MATCH_COLUMNS_SECONDARY:[Ljava/lang/String;

    invoke-direct {p0, p1, v5, v8}, Lcom/android/exsettings/search/Index;->buildSearchSQL(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .local v4, "sql":Ljava/lang/StringBuilder;
    const-string v5, " EXCEPT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, "secondarySql":Ljava/lang/String;
    const-string v5, "Index"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Search secondary query: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {v1, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    aput-object v5, v0, v9

    .line 253
    new-instance v5, Landroid/database/MergeCursor;

    invoke-direct {v5, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v5
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/exsettings/search/Index;->mContext:Landroid/content/Context;

    .line 229
    return-void
.end method

.method public update()V
    .locals 9

    .prologue
    .line 303
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.content.action.SEARCH_INDEXABLES_PROVIDER"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .local v2, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/exsettings/search/Index;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 307
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .line 308
    .local v6, "size":I
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_0
    if-ge v4, v6, :cond_1

    .line 309
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 310
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v1}, Lcom/android/exsettings/search/Index;->isWellKnownProvider(Landroid/content/pm/ResolveInfo;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 308
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 313
    :cond_0
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v0, v7, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 314
    .local v0, "authority":Ljava/lang/String;
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v5, v7, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 316
    .local v5, "packageName":Ljava/lang/String;
    invoke-direct {p0, v5, v0}, Lcom/android/exsettings/search/Index;->addIndexablesFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)Z

    .line 317
    invoke-direct {p0, v5, v0}, Lcom/android/exsettings/search/Index;->addNonIndexablesKeysFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 320
    .end local v0    # "authority":Ljava/lang/String;
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/exsettings/search/Index;->updateInternal()V

    .line 321
    return-void
.end method

.method public updateFromClassNameResource(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "rebuild"    # Z
    .param p3, "includeInSearchResults"    # Z

    .prologue
    .line 476
    if-nez p1, :cond_0

    .line 477
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "class name cannot be null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 479
    :cond_0
    invoke-static {p1}, Lcom/android/exsettings/search/SearchIndexableResources;->getResourceByName(Ljava/lang/String;)Landroid/provider/SearchIndexableResource;

    move-result-object v0

    .line 480
    .local v0, "res":Landroid/provider/SearchIndexableResource;
    if-nez v0, :cond_1

    .line 481
    const-string v1, "Index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find SearchIndexableResources for class name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :goto_0
    return-void

    .line 484
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/search/Index;->mContext:Landroid/content/Context;

    iput-object v1, v0, Landroid/provider/SearchIndexableResource;->context:Landroid/content/Context;

    .line 485
    iput-boolean p3, v0, Landroid/provider/SearchIndexableResource;->enabled:Z

    .line 486
    if-eqz p2, :cond_2

    .line 487
    invoke-virtual {p0, v0}, Lcom/android/exsettings/search/Index;->deleteIndexableData(Landroid/provider/SearchIndexableData;)V

    .line 489
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/exsettings/search/Index;->addIndexableData(Landroid/provider/SearchIndexableData;)V

    .line 490
    iget-object v1, p0, Lcom/android/exsettings/search/Index;->mDataToProcess:Lcom/android/exsettings/search/Index$UpdateData;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/exsettings/search/Index$UpdateData;->forceUpdate:Z

    .line 491
    invoke-direct {p0}, Lcom/android/exsettings/search/Index;->updateInternal()V

    .line 492
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/provider/SearchIndexableResource;->enabled:Z

    goto :goto_0
.end method

.method public updateFromSearchIndexableData(Landroid/provider/SearchIndexableData;)V
    .locals 2
    .param p1, "data"    # Landroid/provider/SearchIndexableData;

    .prologue
    .line 496
    invoke-virtual {p0, p1}, Lcom/android/exsettings/search/Index;->addIndexableData(Landroid/provider/SearchIndexableData;)V

    .line 497
    iget-object v0, p0, Lcom/android/exsettings/search/Index;->mDataToProcess:Lcom/android/exsettings/search/Index$UpdateData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/exsettings/search/Index$UpdateData;->forceUpdate:Z

    .line 498
    invoke-direct {p0}, Lcom/android/exsettings/search/Index;->updateInternal()V

    .line 499
    return-void
.end method
