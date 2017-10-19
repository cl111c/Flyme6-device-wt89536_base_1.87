.class Lcom/android/exsettings/MusicPicker$TrackListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "MusicPicker.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/MusicPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/MusicPicker$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAlbumIdx:I

.field private mArtistIdx:I

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mDurationIdx:I

.field private mIdIdx:I

.field private mIndexer:Lcom/android/exsettings/MusicAlphabetIndexer;

.field private mIndexerSortMode:I

.field final mListView:Landroid/widget/ListView;

.field private mLoading:Z

.field private mTitleIdx:I

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/exsettings/MusicPicker;


# direct methods
.method constructor <init>(Lcom/android/exsettings/MusicPicker;Landroid/content/Context;Landroid/widget/ListView;I[Ljava/lang/String;[I)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listView"    # Landroid/widget/ListView;
    .param p4, "layout"    # I
    .param p5, "from"    # [Ljava/lang/String;
    .param p6, "to"    # [I

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->this$0:Lcom/android/exsettings/MusicPicker;

    .line 220
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->mLoading:Z

    .line 221
    iput-object p3, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->mListView:Landroid/widget/ListView;

    .line 222
    const v0, 0x7f0c0d47

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 223
    const v0, 0x7f0c0d48

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 224
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 262
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/exsettings/MusicPicker$TrackListAdapter$ViewHolder;

    .line 264
    .local v7, "vh":Lcom/android/exsettings/MusicPicker$TrackListAdapter$ViewHolder;
    iget v8, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->mTitleIdx:I

    iget-object v9, v7, Lcom/android/exsettings/MusicPicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    invoke-interface {p3, v8, v9}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 265
    iget-object v8, v7, Lcom/android/exsettings/MusicPicker$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    iget-object v9, v7, Lcom/android/exsettings/MusicPicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v9, v9, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v10, 0x0

    iget-object v11, v7, Lcom/android/exsettings/MusicPicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget v11, v11, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {v8, v9, v10, v11}, Landroid/widget/TextView;->setText([CII)V

    .line 267
    iget v8, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->mDurationIdx:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    div-int/lit16 v6, v8, 0x3e8

    .line 268
    .local v6, "secs":I
    if-nez v6, :cond_3

    .line 269
    iget-object v8, v7, Lcom/android/exsettings/MusicPicker$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    :goto_0
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 275
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 277
    iget v8, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->mAlbumIdx:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 278
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v8, "<unknown>"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 279
    :cond_0
    iget-object v8, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :goto_1
    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 284
    iget v8, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->mArtistIdx:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 285
    if-eqz v5, :cond_1

    const-string v8, "<unknown>"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 286
    :cond_1
    iget-object v8, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 291
    .local v4, "len":I
    iget-object v8, v7, Lcom/android/exsettings/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    array-length v8, v8

    if-ge v8, v4, :cond_2

    .line 292
    new-array v8, v4, [C

    iput-object v8, v7, Lcom/android/exsettings/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 294
    :cond_2
    const/4 v8, 0x0

    iget-object v9, v7, Lcom/android/exsettings/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v4, v9, v10}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 295
    iget-object v8, v7, Lcom/android/exsettings/MusicPicker$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    iget-object v9, v7, Lcom/android/exsettings/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v4}, Landroid/widget/TextView;->setText([CII)V

    .line 301
    iget v8, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->mIdIdx:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 302
    .local v2, "id":J
    iget-object v9, v7, Lcom/android/exsettings/MusicPicker$TrackListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    iget-object v8, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->this$0:Lcom/android/exsettings/MusicPicker;

    iget-wide v10, v8, Lcom/android/exsettings/MusicPicker;->mSelectedId:J

    cmp-long v8, v2, v10

    if-nez v8, :cond_6

    const/4 v8, 0x1

    :goto_3
    invoke-virtual {v9, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 308
    iget-object v1, v7, Lcom/android/exsettings/MusicPicker$TrackListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 309
    .local v1, "iv":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->this$0:Lcom/android/exsettings/MusicPicker;

    iget-wide v8, v8, Lcom/android/exsettings/MusicPicker;->mPlayingId:J

    cmp-long v8, v2, v8

    if-nez v8, :cond_7

    .line 310
    const v8, 0x7f0201ea

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 311
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 315
    :goto_4
    return-void

    .line 271
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "iv":Landroid/widget/ImageView;
    .end local v2    # "id":J
    .end local v4    # "len":I
    .end local v5    # "name":Ljava/lang/String;
    :cond_3
    iget-object v8, v7, Lcom/android/exsettings/MusicPicker$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    int-to-long v10, v6

    invoke-static {p2, v10, v11}, Lcom/android/exsettings/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 281
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v5    # "name":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 288
    :cond_5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 302
    .restart local v2    # "id":J
    .restart local v4    # "len":I
    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    .line 313
    .restart local v1    # "iv":Landroid/widget/ImageView;
    :cond_7
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 324
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 328
    iget-object v1, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->this$0:Lcom/android/exsettings/MusicPicker;

    iput-object p1, v1, Lcom/android/exsettings/MusicPicker;->mCursor:Landroid/database/Cursor;

    .line 330
    if-eqz p1, :cond_1

    .line 332
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->mIdIdx:I

    .line 333
    const-string v1, "title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->mTitleIdx:I

    .line 334
    const-string v1, "artist"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->mArtistIdx:I

    .line 335
    const-string v1, "album"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->mAlbumIdx:I

    .line 336
    const-string v1, "duration"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->mDurationIdx:I

    .line 341
    iget v1, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->mIndexerSortMode:I

    iget-object v2, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->this$0:Lcom/android/exsettings/MusicPicker;

    iget v2, v2, Lcom/android/exsettings/MusicPicker;->mSortMode:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->mIndexer:Lcom/android/exsettings/MusicAlphabetIndexer;

    if-nez v1, :cond_2

    .line 342
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->this$0:Lcom/android/exsettings/MusicPicker;

    iget v1, v1, Lcom/android/exsettings/MusicPicker;->mSortMode:I

    iput v1, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->mIndexerSortMode:I

    .line 343
    iget v0, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->mTitleIdx:I

    .line 344
    .local v0, "idx":I
    iget v1, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->mIndexerSortMode:I

    packed-switch v1, :pswitch_data_0

    .line 352
    :goto_0
    new-instance v1, Lcom/android/exsettings/MusicAlphabetIndexer;

    iget-object v2, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->this$0:Lcom/android/exsettings/MusicPicker;

    invoke-virtual {v2}, Lcom/android/exsettings/MusicPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0d49

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lcom/android/exsettings/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->mIndexer:Lcom/android/exsettings/MusicAlphabetIndexer;

    .line 364
    .end local v0    # "idx":I
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->this$0:Lcom/android/exsettings/MusicPicker;

    invoke-virtual {v1}, Lcom/android/exsettings/MusicPicker;->makeListShown()V

    .line 365
    return-void

    .line 346
    .restart local v0    # "idx":I
    :pswitch_0
    iget v0, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->mArtistIdx:I

    .line 347
    goto :goto_0

    .line 349
    :pswitch_1
    iget v0, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->mAlbumIdx:I

    goto :goto_0

    .line 358
    .end local v0    # "idx":I
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->mIndexer:Lcom/android/exsettings/MusicAlphabetIndexer;

    invoke-virtual {v1, p1}, Lcom/android/exsettings/MusicAlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 344
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPositionForSection(I)I
    .locals 2
    .param p1, "section"    # I

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 381
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 383
    const/4 v1, 0x0

    .line 386
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->mIndexer:Lcom/android/exsettings/MusicAlphabetIndexer;

    invoke-virtual {v1, p1}, Lcom/android/exsettings/MusicAlphabetIndexer;->getPositionForSection(I)I

    move-result v1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 390
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->mIndexer:Lcom/android/exsettings/MusicAlphabetIndexer;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->mIndexer:Lcom/android/exsettings/MusicAlphabetIndexer;

    invoke-virtual {v0}, Lcom/android/exsettings/MusicAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 397
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    .line 239
    const/4 v0, 0x0

    .line 241
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 247
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 248
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/android/exsettings/MusicPicker$TrackListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/android/exsettings/MusicPicker$TrackListAdapter$ViewHolder;-><init>(Lcom/android/exsettings/MusicPicker$TrackListAdapter;)V

    .line 249
    .local v1, "vh":Lcom/android/exsettings/MusicPicker$TrackListAdapter$ViewHolder;
    const v2, 0x7f12013e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/exsettings/MusicPicker$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 250
    const v2, 0x7f12013f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/exsettings/MusicPicker$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    .line 251
    const v2, 0x7f12013d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/exsettings/MusicPicker$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    .line 252
    const v2, 0x7f12013c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, v1, Lcom/android/exsettings/MusicPicker$TrackListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    .line 253
    const v2, 0x7f120140

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/exsettings/MusicPicker$TrackListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 254
    new-instance v2, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v2, v1, Lcom/android/exsettings/MusicPicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    .line 255
    const/16 v2, 0xc8

    new-array v2, v2, [C

    iput-object v2, v1, Lcom/android/exsettings/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 256
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 257
    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->this$0:Lcom/android/exsettings/MusicPicker;

    const/4 v1, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setLoading(Z)V
    .locals 0
    .param p1, "loading"    # Z

    .prologue
    .line 232
    iput-boolean p1, p0, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->mLoading:Z

    .line 233
    return-void
.end method
