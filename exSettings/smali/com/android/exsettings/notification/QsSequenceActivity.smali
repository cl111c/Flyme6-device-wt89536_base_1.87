.class public Lcom/android/exsettings/notification/QsSequenceActivity;
.super Landroid/app/Activity;
.source "QsSequenceActivity.java"


# instance fields
.field final LENGTH:I

.field private final TAG:Ljava/lang/String;

.field private dataSourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field icon_tile:[I

.field mDragGridView:Lcom/android/exsettings/notification/DragGridView;

.field str_id:[Ljava/lang/String;

.field str_title:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const-string v0, "QsSequenceActivity"

    iput-object v0, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->dataSourceList:Ljava/util/List;

    .line 38
    iput v1, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->LENGTH:I

    .line 39
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->icon_tile:[I

    .line 40
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->str_title:[I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->str_id:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/notification/QsSequenceActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/QsSequenceActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->dataSourceList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 5

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/exsettings/notification/QsSequenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0061

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->str_id:[Ljava/lang/String;

    .line 108
    invoke-virtual {p0}, Lcom/android/exsettings/notification/QsSequenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sysui_qs_tiles"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "str":Ljava/lang/String;
    const-string v2, "QsSequenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "str = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    if-eqz v1, :cond_0

    .line 112
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->str_id:[Ljava/lang/String;

    .line 113
    const-string v2, "QsSequenceActivity"

    const-string v3, "str = str_id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->str_id:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 117
    const-string v2, "QsSequenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "str_id[i] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->str_id:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->str_id:[Ljava/lang/String;

    aget-object v3, v2, v0

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 116
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :sswitch_0
    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_1
    const-string v4, "location"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v4, "dataconnection"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v4, "hotspot"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v4, "audioprofile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string v4, "nfc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_6
    const-string v4, "bt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_7
    const-string v4, "rotation"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_8
    const-string v4, "airplane"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x8

    goto :goto_1

    :sswitch_9
    const-string v4, "screenshot"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x9

    goto :goto_1

    :sswitch_a
    const-string v4, "notdisturb"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xa

    goto :goto_1

    :sswitch_b
    const-string v4, "normalmode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xb

    goto/16 :goto_1

    .line 120
    :pswitch_0
    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->icon_tile:[I

    const v3, 0x7f020138

    aput v3, v2, v0

    .line 121
    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->str_title:[I

    const v3, 0x7f0c0cfb

    aput v3, v2, v0

    goto/16 :goto_2

    .line 124
    :pswitch_1
    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->icon_tile:[I

    const v3, 0x7f020130

    aput v3, v2, v0

    .line 125
    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->str_title:[I

    const v3, 0x7f0c0cfc

    aput v3, v2, v0

    goto/16 :goto_2

    .line 128
    :pswitch_2
    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->icon_tile:[I

    const v3, 0x7f02012e

    aput v3, v2, v0

    .line 129
    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->str_title:[I

    const v3, 0x7f0c0cfd

    aput v3, v2, v0

    goto/16 :goto_2

    .line 132
    :pswitch_3
    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->icon_tile:[I

    const v3, 0x7f020131

    aput v3, v2, v0

    .line 133
    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->str_title:[I

    const v3, 0x7f0c0cfe

    aput v3, v2, v0

    goto/16 :goto_2

    .line 136
    :pswitch_4
    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->icon_tile:[I

    const v3, 0x7f020135

    aput v3, v2, v0

    .line 137
    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->str_title:[I

    const v3, 0x7f0c0cff

    aput v3, v2, v0

    goto/16 :goto_2

    .line 140
    :pswitch_5
    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->icon_tile:[I

    const v3, 0x7f020132

    aput v3, v2, v0

    .line 141
    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->str_title:[I

    const v3, 0x7f0c0d00

    aput v3, v2, v0

    goto/16 :goto_2

    .line 144
    :pswitch_6
    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->icon_tile:[I

    const v3, 0x7f02012d

    aput v3, v2, v0

    .line 145
    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->str_title:[I

    const v3, 0x7f0c0d01

    aput v3, v2, v0

    goto/16 :goto_2

    .line 148
    :pswitch_7
    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->icon_tile:[I

    const v3, 0x7f020136

    aput v3, v2, v0

    .line 149
    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->str_title:[I

    const v3, 0x7f0c0d02

    aput v3, v2, v0

    goto/16 :goto_2

    .line 152
    :pswitch_8
    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->icon_tile:[I

    const v3, 0x7f02012c

    aput v3, v2, v0

    .line 153
    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->str_title:[I

    const v3, 0x7f0c0d03

    aput v3, v2, v0

    goto/16 :goto_2

    .line 156
    :pswitch_9
    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->icon_tile:[I

    const v3, 0x7f020137

    aput v3, v2, v0

    .line 157
    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->str_title:[I

    const v3, 0x7f0c0d05

    aput v3, v2, v0

    goto/16 :goto_2

    .line 160
    :pswitch_a
    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->icon_tile:[I

    const v3, 0x7f020133

    aput v3, v2, v0

    .line 161
    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->str_title:[I

    const v3, 0x7f0c0d06

    aput v3, v2, v0

    goto/16 :goto_2

    .line 164
    :pswitch_b
    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->icon_tile:[I

    const v3, 0x7f020134

    aput v3, v2, v0

    .line 165
    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->str_title:[I

    const v3, 0x7f0c0d07

    aput v3, v2, v0

    goto/16 :goto_2

    .line 171
    :cond_2
    return-void

    .line 118
    :sswitch_data_0
    .sparse-switch
        -0x4accd4f6 -> :sswitch_b
        -0x4915e034 -> :sswitch_a
        -0x285a60ae -> :sswitch_8
        -0x18d27a9a -> :sswitch_9
        -0x266f082 -> :sswitch_7
        0xc52 -> :sswitch_6
        0x1a9ab -> :sswitch_5
        0x37af15 -> :sswitch_0
        0x2bc81113 -> :sswitch_4
        0x418a9ecf -> :sswitch_3
        0x53336208 -> :sswitch_2
        0x714f9fb5 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x2

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v1, 0x7f0400d5

    invoke-virtual {p0, v1}, Lcom/android/exsettings/notification/QsSequenceActivity;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/android/exsettings/notification/QsSequenceActivity;->init()V

    .line 48
    const v1, 0x7f12019d

    invoke-virtual {p0, v1}, Lcom/android/exsettings/notification/QsSequenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/notification/DragGridView;

    iput-object v1, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->mDragGridView:Lcom/android/exsettings/notification/DragGridView;

    .line 49
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/16 v1, 0xc

    if-ge v6, v1, :cond_0

    .line 50
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v7, "itemHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "item_image"

    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->icon_tile:[I

    aget v2, v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "item_text"

    invoke-virtual {p0}, Lcom/android/exsettings/notification/QsSequenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->str_title:[I

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "item_id"

    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->str_id:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v1, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->dataSourceList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 57
    .end local v7    # "itemHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->dataSourceList:Ljava/util/List;

    const v3, 0x7f040078

    new-array v4, v8, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "item_image"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "item_text"

    aput-object v5, v4, v1

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 61
    .local v0, "mSimpleAdapter":Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->mDragGridView:Lcom/android/exsettings/notification/DragGridView;

    invoke-virtual {v1, v0}, Lcom/android/exsettings/notification/DragGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    iget-object v1, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->mDragGridView:Lcom/android/exsettings/notification/DragGridView;

    new-instance v2, Lcom/android/exsettings/notification/QsSequenceActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/android/exsettings/notification/QsSequenceActivity$1;-><init>(Lcom/android/exsettings/notification/QsSequenceActivity;Landroid/widget/SimpleAdapter;)V

    invoke-virtual {v1, v2}, Lcom/android/exsettings/notification/DragGridView;->setOnChangeListener(Lcom/android/exsettings/notification/DragGridView$OnChanageListener;)V

    .line 89
    return-void

    .line 57
    nop

    :array_0
    .array-data 4
        0x7f1200e7
        0x7f1200e8
    .end array-data
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 100
    iget-object v0, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->mDragGridView:Lcom/android/exsettings/notification/DragGridView;

    iget-object v0, v0, Lcom/android/exsettings/notification/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->mDragGridView:Lcom/android/exsettings/notification/DragGridView;

    iget-object v1, v1, Lcom/android/exsettings/notification/DragGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 101
    iget-object v0, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->mDragGridView:Lcom/android/exsettings/notification/DragGridView;

    iget-object v0, v0, Lcom/android/exsettings/notification/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->mDragGridView:Lcom/android/exsettings/notification/DragGridView;

    iget-object v1, v1, Lcom/android/exsettings/notification/DragGridView;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 102
    iget-object v0, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->mDragGridView:Lcom/android/exsettings/notification/DragGridView;

    invoke-virtual {v0}, Lcom/android/exsettings/notification/DragGridView;->onStopDrag()V

    .line 103
    iget-object v0, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->mDragGridView:Lcom/android/exsettings/notification/DragGridView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/exsettings/notification/DragGridView;->isDrag:Z

    .line 104
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 95
    return-void
.end method

.method public updateTilsSetting()V
    .locals 7

    .prologue
    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .local v2, "str":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->dataSourceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 175
    iget-object v3, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->dataSourceList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 176
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/android/exsettings/notification/QsSequenceActivity;->dataSourceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_0

    .line 177
    const-string v3, "item_id"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_0
    const-string v3, "item_id"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 183
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    const-string v3, "QsSequenceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "str_updateTilsSetting = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0}, Lcom/android/exsettings/notification/QsSequenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sysui_qs_tiles"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 187
    return-void
.end method
