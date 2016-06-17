.class final Lezj;
.super Landroid/os/AsyncTask;
.source "CleanCell.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;

.field private synthetic b:Lezf;


# direct methods
.method constructor <init>(Lezf;Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lezj;->b:Lezf;

    iput-object p2, p0, Lezj;->a:Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lezj;->b:Lezf;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/MemoryUtil;->getUsedMemory(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, v0, Lezf;->e:J

    invoke-static {}, Lezf;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6
    .parameter

    .prologue
    .line 115
    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lezj;->b:Lezf;

    iget-object v1, p0, Lezj;->a:Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;->getProgressText()Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v3, Leyc;

    add-int/lit8 v4, v2, 0x0

    mul-int/lit8 v4, v4, 0x14

    int-to-long v4, v4

    invoke-direct {v3, v4, v5, v2}, Leyc;-><init>(JI)V

    new-instance v4, Lezk;

    invoke-direct {v4, v0, v1, v2}, Lezk;-><init>(Lezf;Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;I)V

    iput-object v4, v3, Leyc;->a:Leyd;

    invoke-virtual {v3}, Leyc;->start()Landroid/os/CountDownTimer;

    return-void
.end method
