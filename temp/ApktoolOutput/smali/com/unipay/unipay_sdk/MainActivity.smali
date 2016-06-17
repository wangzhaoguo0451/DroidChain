.class public Lcom/unipay/unipay_sdk/MainActivity;
.super Landroid/app/Activity;


# instance fields
.field public a:Ljava/text/Format;

.field private b:Landroid/widget/Button;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/MainActivity;->a:Ljava/text/Format;

    new-instance v0, Lchf;

    invoke-direct {v0, p0}, Lchf;-><init>(Lcom/unipay/unipay_sdk/MainActivity;)V

    iput-object v0, p0, Lcom/unipay/unipay_sdk/MainActivity;->c:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/unipay/unipay_sdk/MainActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/MainActivity;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/unipay/unipay_sdk/MainActivity;->setContentView(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unipay/unipay_sdk/MainActivity;->setRequestedOrientation(I)V

    new-instance v0, Lcom/unipay/beans/GameBaseBean;

    const-string v1, "90234616120120921431100"

    const-string v2, "902346161"

    const-string v3, "86000504"

    const-string v4, "\u79d1\u6280\u79d1\u6280"

    const-string v5, "400 600 999"

    const-string v6, "\u6e38\u620f\u6e38\u620f"

    const-string v7, "uid"

    const-string v8, "00012243"

    invoke-direct/range {v0 .. v8}, Lcom/unipay/beans/GameBaseBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v1, 0x7f07

    invoke-virtual {p0, v1}, Lcom/unipay/unipay_sdk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/unipay/unipay_sdk/MainActivity;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/MainActivity;->b:Landroid/widget/Button;

    new-instance v2, Lchn;

    invoke-direct {v2, p0, v0}, Lchn;-><init>(Lcom/unipay/unipay_sdk/MainActivity;Lcom/unipay/beans/GameBaseBean;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method
