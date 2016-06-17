.class Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$2$3;
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
    .line 427
    iput-object p1, p0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$2$3;->this$1:Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$2;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$2$3;->val$applicationContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 430
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$2$3;->val$applicationContext:Landroid/content/Context;

    const-string v1, "\u7cdf\u7cd5\uff01\u8c8c\u4f3c\u521a\u624d\u7684\u53cd\u9988\u4e0d\u6210\u529f\uff0c\u91cd\u65b0\u8bd5\u8bd5~"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 432
    return-void
.end method
