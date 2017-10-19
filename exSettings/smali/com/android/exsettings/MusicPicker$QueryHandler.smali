.class final Lcom/android/exsettings/MusicPicker$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MusicPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/MusicPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/MusicPicker;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/MusicPicker;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/exsettings/MusicPicker$QueryHandler;->this$0:Lcom/android/exsettings/MusicPicker;

    .line 407
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 408
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    .line 413
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker$QueryHandler;->this$0:Lcom/android/exsettings/MusicPicker;

    invoke-virtual {v0}, Lcom/android/exsettings/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/MusicPicker$QueryHandler;->this$0:Lcom/android/exsettings/MusicPicker;

    iget-boolean v0, v0, Lcom/android/exsettings/MusicPicker;->mIsItemSelected:Z

    if-nez v0, :cond_1

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker$QueryHandler;->this$0:Lcom/android/exsettings/MusicPicker;

    iget-object v0, v0, Lcom/android/exsettings/MusicPicker;->mOkayButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 417
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker$QueryHandler;->this$0:Lcom/android/exsettings/MusicPicker;

    iget-object v0, v0, Lcom/android/exsettings/MusicPicker;->mOkayButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/exsettings/MusicPicker$QueryHandler;->this$0:Lcom/android/exsettings/MusicPicker;

    invoke-virtual {v1}, Lcom/android/exsettings/MusicPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker$QueryHandler;->this$0:Lcom/android/exsettings/MusicPicker;

    invoke-virtual {v0}, Lcom/android/exsettings/MusicPicker;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    .line 423
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker$QueryHandler;->this$0:Lcom/android/exsettings/MusicPicker;

    iget-object v0, v0, Lcom/android/exsettings/MusicPicker;->mAdapter:Lcom/android/exsettings/MusicPicker$TrackListAdapter;

    invoke-virtual {v0, v3}, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->setLoading(Z)V

    .line 424
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker$QueryHandler;->this$0:Lcom/android/exsettings/MusicPicker;

    iget-object v0, v0, Lcom/android/exsettings/MusicPicker;->mAdapter:Lcom/android/exsettings/MusicPicker$TrackListAdapter;

    invoke-virtual {v0, p3}, Lcom/android/exsettings/MusicPicker$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 426
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker$QueryHandler;->this$0:Lcom/android/exsettings/MusicPicker;

    invoke-virtual {v0}, Lcom/android/exsettings/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/exsettings/MusicPicker$QueryHandler;->this$0:Lcom/android/exsettings/MusicPicker;

    iget-boolean v0, v0, Lcom/android/exsettings/MusicPicker;->mIsItemSelected:Z

    if-eqz v0, :cond_2

    .line 428
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker$QueryHandler;->this$0:Lcom/android/exsettings/MusicPicker;

    iget-object v0, v0, Lcom/android/exsettings/MusicPicker;->mOkayButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 430
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker$QueryHandler;->this$0:Lcom/android/exsettings/MusicPicker;

    iget-object v0, v0, Lcom/android/exsettings/MusicPicker;->mOkayButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/exsettings/MusicPicker$QueryHandler;->this$0:Lcom/android/exsettings/MusicPicker;

    invoke-virtual {v1}, Lcom/android/exsettings/MusicPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker$QueryHandler;->this$0:Lcom/android/exsettings/MusicPicker;

    invoke-virtual {v0, v3}, Lcom/android/exsettings/MusicPicker;->setProgressBarIndeterminateVisibility(Z)V

    .line 436
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker$QueryHandler;->this$0:Lcom/android/exsettings/MusicPicker;

    iget-object v0, v0, Lcom/android/exsettings/MusicPicker;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_4

    .line 437
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker$QueryHandler;->this$0:Lcom/android/exsettings/MusicPicker;

    invoke-virtual {v0}, Lcom/android/exsettings/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/MusicPicker$QueryHandler;->this$0:Lcom/android/exsettings/MusicPicker;

    iget-object v1, v1, Lcom/android/exsettings/MusicPicker;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 438
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker$QueryHandler;->this$0:Lcom/android/exsettings/MusicPicker;

    iget-boolean v0, v0, Lcom/android/exsettings/MusicPicker;->mListHasFocus:Z

    if-eqz v0, :cond_3

    .line 439
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker$QueryHandler;->this$0:Lcom/android/exsettings/MusicPicker;

    invoke-virtual {v0}, Lcom/android/exsettings/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 441
    :cond_3
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker$QueryHandler;->this$0:Lcom/android/exsettings/MusicPicker;

    iput-boolean v3, v0, Lcom/android/exsettings/MusicPicker;->mListHasFocus:Z

    .line 442
    iget-object v0, p0, Lcom/android/exsettings/MusicPicker$QueryHandler;->this$0:Lcom/android/exsettings/MusicPicker;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/exsettings/MusicPicker;->mListState:Landroid/os/Parcelable;

    .line 447
    :cond_4
    :goto_0
    return-void

    .line 445
    :cond_5
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
