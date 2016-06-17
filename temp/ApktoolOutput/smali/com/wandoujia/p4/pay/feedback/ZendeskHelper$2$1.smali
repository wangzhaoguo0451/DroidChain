.class Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$2$1;
.super Ljava/lang/Object;
.source "ZendeskHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$2;

.field final synthetic val$applicationContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$2;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$2$1;->this$1:Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$2;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$2$1;->val$applicationContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 412
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$2$1;->val$applicationContext:Landroid/content/Context;

    const-string v1, "\u611f\u8c22\u4f60\u7684\u53cd\u9988\uff01"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 414
    return-void
.end method
