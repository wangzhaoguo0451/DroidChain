.class public final Lchf;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/unipay/unipay_sdk/MainActivity;


# direct methods
.method public constructor <init>(Lcom/unipay/unipay_sdk/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lchf;->a:Lcom/unipay/unipay_sdk/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lchf;->a:Lcom/unipay/unipay_sdk/MainActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget v0, p1, Landroid/os/Message;->arg1:I

    return-void
.end method
