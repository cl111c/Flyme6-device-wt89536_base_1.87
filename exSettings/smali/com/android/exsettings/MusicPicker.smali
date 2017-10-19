.class public Lcom/android/exsettings/MusicPicker;
.super Landroid/app/ListActivity;
.source "MusicPicker.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/MusicPicker$QueryHandler;,
        Lcom/android/exsettings/MusicPicker$TrackListAdapter;
    }
.end annotation


# static fields
.field static final CURSOR_COLS:[Ljava/lang/String;

.field static sFormatBuilder:Ljava/lang/StringBuilder;

.field static sFormatter:Ljava/util/Formatter;

.field static final sTimeArgs:[Ljava/lang/Object;


# instance fields
.field mAdapter:Lcom/android/exsettings/MusicPicker$TrackListAdapter;

.field private mAudioManager:Landroid/media/AudioManager;

.field mBaseUri:Landroid/net/Uri;

.field mCancelButton:Landroid/widget/Button;

.field mCursor:Landroid/database/Cursor;

.field mIsAsAlarm:Z

.field private mIsCancelled:Z

.field mIsItemSelected:Z

.field mListContainer:Landroid/view/View;

.field mListHasFocus:Z

.field mListShown:Z

.field mListState:Landroid/os/Parcelable;

.field mMediaPlayer:Landroid/media/MediaPlayer;

.field mOkayButton:Landroid/widget/Button;

.field mPlayingId:J

.field mProgressContainer:Landroid/view/View;

.field mQueryHandler:Lcom/android/exsettings/MusicPicker$QueryHandler;

.field private final mScanListener:Landroid/content/BroadcastReceiver;

.field mSelectedId:J

.field mSelectedUri:Landroid/net/Uri;

.field mSortMode:I

.field mSortOrder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 107
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v0, v1

    const-string v1, "artist"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "track"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exsettings/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/exsettings/MusicPicker;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 122
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/exsettings/MusicPicker;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/exsettings/MusicPicker;->sFormatter:Ljava/util/Formatter;

    .line 124
    new-array v0, v3, [Ljava/lang/Object;

    sput-object v0, Lcom/android/exsettings/MusicPicker;->sTimeArgs:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 126
    iput-boolean v1, p0, Lcom/android/exsettings/MusicPicker;->mIsCancelled:Z

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/MusicPicker;->mListState:Landroid/os/Parcelable;

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exsettings/MusicPicker;->mSortMode:I

    .line 166
    iput-wide v2, p0, Lcom/android/exsettings/MusicPicker;->mSelectedId:J

    .line 174
    iput-wide v2, p0, Lcom/android/exsettings/MusicPicker;->mPlayingId:J

    .line 179
    iput-boolean v1, p0, Lcom/android/exsettings/MusicPicker;->mIsAsAlarm:Z

    .line 182
    iput-boolean v1, p0, Lcom/android/exsettings/MusicPicker;->mIsItemSelected:Z

    .line 547
    new-instance v0, Lcom/android/exsettings/MusicPicker$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/MusicPicker$1;-><init>(Lcom/android/exsettings/MusicPicker;)V

    iput-object v0, p0, Lcom/android/exsettings/MusicPicker;->mScanListener:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 616
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 618
    invoke-virtual {p0}, Lcom/android/exsettings/MusicPicker;->finish()V

    .line 621
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method doQuery(ZLjava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "sync"    # Z
    .param p2, "filterstring"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x2a

    const/4 v5, 0x1

    const/4 v11, 0x0

    .line 684
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker;->mQueryHandler:Lcom/android/exsettings/MusicPicker$QueryHandler;

    invoke-virtual {v0, v3}, Lcom/android/exsettings/MusicPicker$QueryHandler;->cancelOperation(I)V

    .line 686
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 687
    .local v10, "where":Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    iget-object v1, p0, Lcom/android/exsettings/MusicPicker;->mBaseUri:Landroid/net/Uri;

    .line 694
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 695
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "filter"

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 698
    :cond_0
    if-eqz p1, :cond_1

    .line 700
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/MusicPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/exsettings/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/exsettings/MusicPicker;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 710
    :goto_0
    return-object v0

    .line 705
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker;->mAdapter:Lcom/android/exsettings/MusicPicker$TrackListAdapter;

    invoke-virtual {v0, v5}, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->setLoading(Z)V

    .line 706
    invoke-virtual {p0, v5}, Lcom/android/exsettings/MusicPicker;->setProgressBarIndeterminateVisibility(Z)V

    .line 707
    iget-object v2, p0, Lcom/android/exsettings/MusicPicker;->mQueryHandler:Lcom/android/exsettings/MusicPicker$QueryHandler;

    sget-object v6, Lcom/android/exsettings/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/exsettings/MusicPicker;->mSortOrder:Ljava/lang/String;

    move-object v4, v11

    move-object v5, v1

    move-object v8, v11

    invoke-virtual/range {v2 .. v9}, Lcom/android/exsettings/MusicPicker$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v0, v11

    .line 710
    goto :goto_0

    .line 702
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method makeListShown()V
    .locals 2

    .prologue
    .line 662
    iget-boolean v0, p0, Lcom/android/exsettings/MusicPicker;->mListShown:Z

    if-nez v0, :cond_0

    .line 663
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/MusicPicker;->mListShown:Z

    .line 664
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker;->mProgressContainer:Landroid/view/View;

    const v1, 0x10a0001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 666
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker;->mProgressContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 667
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker;->mListContainer:Landroid/view/View;

    const/high16 v1, 0x10a0000

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 669
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker;->mListContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 671
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 799
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 801
    :sswitch_0
    iget-wide v0, p0, Lcom/android/exsettings/MusicPicker;->mSelectedId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 802
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/exsettings/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exsettings/MusicPicker;->setResult(ILandroid/content/Intent;)V

    .line 803
    invoke-virtual {p0}, Lcom/android/exsettings/MusicPicker;->finish()V

    goto :goto_0

    .line 809
    :sswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/MusicPicker;->mIsCancelled:Z

    .line 811
    invoke-virtual {p0}, Lcom/android/exsettings/MusicPicker;->finish()V

    goto :goto_0

    .line 799
    :sswitch_data_0
    .sparse-switch
        0x7f12004e -> :sswitch_1
        0x7f12013b -> :sswitch_0
    .end sparse-switch
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-ne v0, p1, :cond_0

    .line 781
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 782
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 783
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 784
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exsettings/MusicPicker;->mPlayingId:J

    .line 785
    invoke-virtual {p0}, Lcom/android/exsettings/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 787
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x0

    .line 453
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 454
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/MusicPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/exsettings/MusicPicker;->mAudioManager:Landroid/media/AudioManager;

    .line 456
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/exsettings/MusicPicker;->requestWindowFeature(I)Z

    .line 458
    invoke-virtual {p0}, Lcom/android/exsettings/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mIsAsAlarm"

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/MusicPicker;->mIsAsAlarm:Z

    .line 460
    const/4 v12, 0x1

    .line 461
    .local v12, "sortMode":I
    if-nez p1, :cond_3

    .line 462
    invoke-virtual {p0}, Lcom/android/exsettings/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/exsettings/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    .line 473
    :goto_0
    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-virtual {p0}, Lcom/android/exsettings/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 474
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/exsettings/MusicPicker;->mBaseUri:Landroid/net/Uri;

    .line 484
    :cond_0
    const v0, 0x7f040095

    invoke-virtual {p0, v0}, Lcom/android/exsettings/MusicPicker;->setContentView(I)V

    .line 486
    const-string v0, "title_key"

    iput-object v0, p0, Lcom/android/exsettings/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 488
    invoke-virtual {p0}, Lcom/android/exsettings/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 490
    .local v3, "listView":Landroid/widget/ListView;
    invoke-virtual {v3, v13}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 492
    new-instance v0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;

    const v4, 0x7f040096

    new-array v5, v13, [Ljava/lang/String;

    new-array v6, v13, [I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/exsettings/MusicPicker$TrackListAdapter;-><init>(Lcom/android/exsettings/MusicPicker;Landroid/content/Context;Landroid/widget/ListView;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/exsettings/MusicPicker;->mAdapter:Lcom/android/exsettings/MusicPicker$TrackListAdapter;

    .line 496
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker;->mAdapter:Lcom/android/exsettings/MusicPicker$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/MusicPicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 498
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 501
    invoke-virtual {v3, v13}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 503
    new-instance v0, Lcom/android/exsettings/MusicPicker$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/android/exsettings/MusicPicker$QueryHandler;-><init>(Lcom/android/exsettings/MusicPicker;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/exsettings/MusicPicker;->mQueryHandler:Lcom/android/exsettings/MusicPicker$QueryHandler;

    .line 505
    const v0, 0x7f120139

    invoke-virtual {p0, v0}, Lcom/android/exsettings/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/MusicPicker;->mProgressContainer:Landroid/view/View;

    .line 506
    const v0, 0x7f120057

    invoke-virtual {p0, v0}, Lcom/android/exsettings/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/MusicPicker;->mListContainer:Landroid/view/View;

    .line 509
    const v0, 0x7f12013b

    invoke-virtual {p0, v0}, Lcom/android/exsettings/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/exsettings/MusicPicker;->mOkayButton:Landroid/widget/Button;

    .line 510
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker;->mOkayButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    const v0, 0x7f12004e

    invoke-virtual {p0, v0}, Lcom/android/exsettings/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/exsettings/MusicPicker;->mCancelButton:Landroid/widget/Button;

    .line 513
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    iput-boolean v13, p0, Lcom/android/exsettings/MusicPicker;->mIsCancelled:Z

    .line 520
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 521
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 522
    .local v8, "builder":Landroid/net/Uri$Builder;
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v11

    .line 523
    .local v11, "path":Ljava/lang/String;
    const/16 v0, 0x2f

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 524
    .local v10, "idx":I
    if-ltz v10, :cond_1

    .line 525
    invoke-virtual {v11, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 527
    :cond_1
    invoke-virtual {v8, v11}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 528
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 532
    .local v7, "baseSelectedUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v7, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 535
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exsettings/MusicPicker;->mSelectedId:J

    .line 539
    .end local v7    # "baseSelectedUri":Landroid/net/Uri;
    .end local v8    # "builder":Landroid/net/Uri$Builder;
    .end local v10    # "idx":I
    .end local v11    # "path":Ljava/lang/String;
    :cond_2
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 540
    .local v9, "f":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 541
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 542
    const-string v0, "file"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v9}, Lcom/android/exsettings/MusicPicker;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 544
    invoke-virtual {p0, v12}, Lcom/android/exsettings/MusicPicker;->setSortMode(I)Z

    .line 545
    .end local v3    # "listView":Landroid/widget/ListView;
    .end local v9    # "f":Landroid/content/IntentFilter;
    :goto_1
    return-void

    .line 465
    :cond_3
    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/exsettings/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    .line 469
    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/MusicPicker;->mListState:Landroid/os/Parcelable;

    .line 470
    const-string v0, "focused"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/MusicPicker;->mListHasFocus:Z

    .line 471
    const-string v0, "sortMode"

    invoke-virtual {p1, v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    goto/16 :goto_0

    .line 476
    :cond_4
    invoke-virtual {p0}, Lcom/android/exsettings/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/MusicPicker;->mBaseUri:Landroid/net/Uri;

    .line 477
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker;->mBaseUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 478
    const-string v0, "MusicPicker"

    const-string v1, "No data URI given to PICK action"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-virtual {p0}, Lcom/android/exsettings/MusicPicker;->finish()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 573
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 577
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/MusicPicker;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 611
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 612
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v1, 0x1

    .line 716
    iput-boolean v1, p0, Lcom/android/exsettings/MusicPicker;->mIsItemSelected:Z

    .line 717
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker;->mOkayButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 718
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker;->mOkayButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/exsettings/MusicPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 720
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 726
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/MusicPicker;->setSelected(Landroid/database/Cursor;)V

    .line 727
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 566
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/MusicPicker;->setSortMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    const/4 v0, 0x1

    .line 569
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 591
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 592
    invoke-virtual {p0}, Lcom/android/exsettings/MusicPicker;->stopMediaPlayer()V

    .line 593
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 594
    invoke-virtual {p0}, Lcom/android/exsettings/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 595
    return-void
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 561
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 562
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/exsettings/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    .line 563
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 581
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 584
    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    iget-object v1, p0, Lcom/android/exsettings/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 585
    const-string v0, "liststate"

    invoke-virtual {p0}, Lcom/android/exsettings/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 586
    const-string v0, "focused"

    invoke-virtual {p0}, Lcom/android/exsettings/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 587
    const-string v0, "sortMode"

    iget v1, p0, Lcom/android/exsettings/MusicPicker;->mSortMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 588
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 598
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 604
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker;->mAdapter:Lcom/android/exsettings/MusicPicker$TrackListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->setLoading(Z)V

    .line 605
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker;->mAdapter:Lcom/android/exsettings/MusicPicker$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 606
    return-void
.end method

.method setSelected(Landroid/database/Cursor;)V
    .locals 9
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 730
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 731
    .local v4, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/exsettings/MusicPicker;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/exsettings/MusicPicker;->mCursor:Landroid/database/Cursor;

    const-string v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 733
    .local v2, "newId":J
    iget-object v5, p0, Lcom/android/exsettings/MusicPicker;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/exsettings/MusicPicker;->mCursor:Landroid/database/Cursor;

    const-string v7, "_data"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 749
    .local v0, "data":Ljava/lang/String;
    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    .line 751
    iput-wide v2, p0, Lcom/android/exsettings/MusicPicker;->mSelectedId:J

    .line 752
    iget-wide v6, p0, Lcom/android/exsettings/MusicPicker;->mPlayingId:J

    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/exsettings/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v5, :cond_3

    .line 753
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/MusicPicker;->stopMediaPlayer()V

    .line 755
    iget-boolean v5, p0, Lcom/android/exsettings/MusicPicker;->mIsCancelled:Z

    if-eqz v5, :cond_2

    .line 777
    :cond_1
    :goto_0
    return-void

    .line 757
    :cond_2
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v5, p0, Lcom/android/exsettings/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 759
    :try_start_0
    iget-object v5, p0, Lcom/android/exsettings/MusicPicker;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 761
    iget-object v5, p0, Lcom/android/exsettings/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lcom/android/exsettings/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v5, p0, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 762
    iget-object v5, p0, Lcom/android/exsettings/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 763
    iget-object v5, p0, Lcom/android/exsettings/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 764
    iget-object v5, p0, Lcom/android/exsettings/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V

    .line 765
    iget-object v5, p0, Lcom/android/exsettings/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    .line 766
    iput-wide v2, p0, Lcom/android/exsettings/MusicPicker;->mPlayingId:J

    .line 767
    invoke-virtual {p0}, Lcom/android/exsettings/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidateViews()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 768
    :catch_0
    move-exception v1

    .line 769
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "MusicPicker"

    const-string v6, "Unable to play track"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 770
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 771
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v5, "MusicPicker"

    const-string v6, "The mSelectedUri is invalid"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 773
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_3
    iget-object v5, p0, Lcom/android/exsettings/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_1

    .line 774
    invoke-virtual {p0}, Lcom/android/exsettings/MusicPicker;->stopMediaPlayer()V

    .line 775
    invoke-virtual {p0}, Lcom/android/exsettings/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0
.end method

.method setSortMode(I)Z
    .locals 4
    .param p1, "sortMode"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 629
    iget v2, p0, Lcom/android/exsettings/MusicPicker;->mSortMode:I

    if-eq p1, v2, :cond_0

    .line 630
    packed-switch p1, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 654
    :goto_0
    return v0

    .line 632
    :pswitch_0
    iput p1, p0, Lcom/android/exsettings/MusicPicker;->mSortMode:I

    .line 633
    const-string v2, "title_key"

    iput-object v2, p0, Lcom/android/exsettings/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 634
    invoke-virtual {p0, v1, v3}, Lcom/android/exsettings/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 637
    :pswitch_1
    iput p1, p0, Lcom/android/exsettings/MusicPicker;->mSortMode:I

    .line 638
    const-string v2, "album_key ASC, track ASC, title_key ASC"

    iput-object v2, p0, Lcom/android/exsettings/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 641
    invoke-virtual {p0, v1, v3}, Lcom/android/exsettings/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 644
    :pswitch_2
    iput p1, p0, Lcom/android/exsettings/MusicPicker;->mSortMode:I

    .line 645
    const-string v2, "artist_key ASC, album_key ASC, track ASC, title_key ASC"

    iput-object v2, p0, Lcom/android/exsettings/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 649
    invoke-virtual {p0, v1, v3}, Lcom/android/exsettings/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 630
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method stopMediaPlayer()V
    .locals 2

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 792
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 793
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 794
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exsettings/MusicPicker;->mPlayingId:J

    .line 796
    :cond_0
    return-void
.end method
