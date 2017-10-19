.class Lcom/android/exsettings/notification/QsSequenceActivity$1;
.super Ljava/lang/Object;
.source "QsSequenceActivity.java"

# interfaces
.implements Lcom/android/exsettings/notification/DragGridView$OnChanageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/notification/QsSequenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/QsSequenceActivity;

.field final synthetic val$mSimpleAdapter:Landroid/widget/SimpleAdapter;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notification/QsSequenceActivity;Landroid/widget/SimpleAdapter;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/exsettings/notification/QsSequenceActivity$1;->this$0:Lcom/android/exsettings/notification/QsSequenceActivity;

    iput-object p2, p0, Lcom/android/exsettings/notification/QsSequenceActivity$1;->val$mSimpleAdapter:Landroid/widget/SimpleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(II)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 67
    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity$1;->this$0:Lcom/android/exsettings/notification/QsSequenceActivity;

    # getter for: Lcom/android/exsettings/notification/QsSequenceActivity;->dataSourceList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/exsettings/notification/QsSequenceActivity;->access$000(Lcom/android/exsettings/notification/QsSequenceActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 73
    .local v1, "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-ge p1, p2, :cond_0

    .line 74
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 75
    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity$1;->this$0:Lcom/android/exsettings/notification/QsSequenceActivity;

    # getter for: Lcom/android/exsettings/notification/QsSequenceActivity;->dataSourceList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/exsettings/notification/QsSequenceActivity;->access$000(Lcom/android/exsettings/notification/QsSequenceActivity;)Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v0, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "i":I
    :cond_0
    if-le p1, p2, :cond_1

    .line 78
    move v0, p1

    .restart local v0    # "i":I
    :goto_1
    if-le v0, p2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity$1;->this$0:Lcom/android/exsettings/notification/QsSequenceActivity;

    # getter for: Lcom/android/exsettings/notification/QsSequenceActivity;->dataSourceList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/exsettings/notification/QsSequenceActivity;->access$000(Lcom/android/exsettings/notification/QsSequenceActivity;)Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v0, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 78
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 83
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity$1;->this$0:Lcom/android/exsettings/notification/QsSequenceActivity;

    # getter for: Lcom/android/exsettings/notification/QsSequenceActivity;->dataSourceList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/exsettings/notification/QsSequenceActivity;->access$000(Lcom/android/exsettings/notification/QsSequenceActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity$1;->val$mSimpleAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v2}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 85
    iget-object v2, p0, Lcom/android/exsettings/notification/QsSequenceActivity$1;->this$0:Lcom/android/exsettings/notification/QsSequenceActivity;

    invoke-virtual {v2}, Lcom/android/exsettings/notification/QsSequenceActivity;->updateTilsSetting()V

    .line 86
    return-void
.end method
