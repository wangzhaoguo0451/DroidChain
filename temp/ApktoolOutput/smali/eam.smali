.class final Leam;
.super Leis;
.source "CasualItemController.java"


# instance fields
.field final synthetic a:Leal;


# direct methods
.method constructor <init>(Leal;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Leam;->a:Leal;

    invoke-direct {p0}, Leis;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Leiw;
    .locals 3

    .prologue
    .line 76
    invoke-super {p0}, Leis;->a()Leiw;

    move-result-object v0

    .line 77
    const/16 v1, 0x8

    iput v1, v0, Leiw;->e:I

    .line 78
    iget-object v1, p0, Leam;->a:Leal;

    iget-object v1, v1, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Leam;->a:Leal;

    iget-object v1, v1, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->getCasualItemView()Leaz;

    move-result-object v1

    invoke-virtual {v1}, Leaz;->b()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    :cond_0
    return-object v0
.end method

.method protected final a(Ljava/lang/String;)Leiw;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 86
    invoke-super {p0, p1}, Leis;->a(Ljava/lang/String;)Leiw;

    move-result-object v0

    .line 87
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/wandoujia/appmanager/AppManager;->g(Ljava/lang/String;)Lcom/wandoujia/appmanager/AppManager$AppState;

    move-result-object v1

    .line 89
    sget-object v2, Leaq;->b:[I

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/AppManager$AppState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 140
    :cond_0
    :goto_0
    return-object v0

    .line 93
    :pswitch_0
    iget-object v1, p0, Leam;->a:Leal;

    iget-object v1, v1, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Leam;->a:Leal;

    iget-object v1, v1, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->getCasualItemView()Leaz;

    move-result-object v1

    invoke-virtual {v1}, Leaz;->b()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v1, p0, Leam;->a:Leal;

    iget-object v1, v1, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->getCasualItemView()Leaz;

    move-result-object v1

    iget-object v1, v1, Leaz;->a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-static {v1}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->c(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    iget-object v1, p0, Leam;->a:Leal;

    iget-object v1, v1, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->getCasualItemView()Leaz;

    move-result-object v1

    iget-object v1, v1, Leaz;->a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-static {v1}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->e(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v1, p0, Leam;->a:Leal;

    iget-object v1, v1, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->getCasualItemView()Leaz;

    move-result-object v1

    iget-object v1, v1, Leaz;->a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-static {v1}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->d(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setVisibility(I)V

    goto :goto_0

    .line 101
    :pswitch_1
    iget-object v1, p0, Leam;->a:Leal;

    iget-object v1, v1, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Leam;->a:Leal;

    iget-object v1, v1, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->getCasualItemView()Leaz;

    move-result-object v1

    invoke-virtual {v1}, Leaz;->b()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object v1, p0, Leam;->a:Leal;

    iget-object v1, v1, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->getCasualItemView()Leaz;

    move-result-object v1

    iget-object v1, v1, Leaz;->a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-static {v1}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->e(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v1, p0, Leam;->a:Leal;

    iget-object v1, v1, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->getCasualItemView()Leaz;

    move-result-object v1

    iget-object v1, v1, Leaz;->a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-static {v1}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->c(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iget-object v1, p0, Leam;->a:Leal;

    iget-object v1, v1, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->getCasualItemView()Leaz;

    move-result-object v1

    iget-object v1, v1, Leaz;->a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-static {v1}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->d(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setVisibility(I)V

    .line 107
    :cond_1
    iput v3, v0, Leiw;->e:I

    goto/16 :goto_0

    .line 110
    :pswitch_2
    new-instance v1, Lean;

    invoke-direct {v1, p0}, Lean;-><init>(Leam;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Lcom/wandoujia/base/utils/AsyncTaskUtils;->runAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final a(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 48
    invoke-super {p0, p1}, Leis;->a(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V

    .line 50
    sget-object v0, Leaq;->a:[I

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->h()Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 64
    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v0

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lebl;->b(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Leam;->a:Leal;

    iget-object v0, v0, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Leam;->a:Leal;

    iget-object v0, v0, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->getCasualItemView()Leaz;

    move-result-object v0

    invoke-virtual {v0}, Leaz;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Leam;->a:Leal;

    iget-object v0, v0, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->getCasualItemView()Leaz;

    move-result-object v0

    iget-object v0, v0, Leaz;->a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->c(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Leam;->a:Leal;

    iget-object v0, v0, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->getCasualItemView()Leaz;

    move-result-object v0

    iget-object v0, v0, Leaz;->a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->e(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Leam;->a:Leal;

    iget-object v0, v0, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->getCasualItemView()Leaz;

    move-result-object v0

    iget-object v0, v0, Leaz;->a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->d(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setVisibility(I)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 52
    :pswitch_0
    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v0

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lebl;->a(Ljava/lang/String;)V

    .line 56
    :pswitch_1
    iget-object v0, p0, Leam;->a:Leal;

    iget-object v0, v0, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Leam;->a:Leal;

    iget-object v0, v0, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->getCasualItemView()Leaz;

    move-result-object v0

    invoke-virtual {v0}, Leaz;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Leam;->a:Leal;

    iget-object v0, v0, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->getCasualItemView()Leaz;

    move-result-object v0

    iget-object v0, v0, Leaz;->a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->e(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Leam;->a:Leal;

    iget-object v0, v0, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->getCasualItemView()Leaz;

    move-result-object v0

    iget-object v0, v0, Leaz;->a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->d(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Leam;->a:Leal;

    iget-object v0, v0, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->getCasualItemView()Leaz;

    move-result-object v0

    iget-object v0, v0, Leaz;->a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->c(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected final b()Leiw;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 145
    invoke-super {p0}, Leis;->b()Leiw;

    move-result-object v0

    .line 146
    iput v2, v0, Leiw;->e:I

    .line 148
    iget-object v1, p0, Leam;->a:Leal;

    iget-object v1, v1, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Leam;->a:Leal;

    iget-object v1, v1, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->getCasualItemView()Leaz;

    move-result-object v1

    invoke-virtual {v1}, Leaz;->b()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v1, p0, Leam;->a:Leal;

    iget-object v1, v1, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->getCasualItemView()Leaz;

    move-result-object v1

    iget-object v1, v1, Leaz;->a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-static {v1}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->e(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v1, p0, Leam;->a:Leal;

    iget-object v1, v1, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->getCasualItemView()Leaz;

    move-result-object v1

    iget-object v1, v1, Leaz;->a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-static {v1}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->c(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    iget-object v1, p0, Leam;->a:Leal;

    iget-object v1, v1, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->getCasualItemView()Leaz;

    move-result-object v1

    iget-object v1, v1, Leaz;->a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-static {v1}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->d(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setVisibility(I)V

    .line 155
    :cond_0
    return-object v0
.end method
