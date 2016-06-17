.class Lcom/wandoujia/p4/pay/PayImpl$8;
.super Ljava/lang/Object;
.source "PayImpl.java"

# interfaces
.implements Lagt;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/PayImpl;

.field final synthetic val$callBack:Lcom/wandoujia/p4/pay/model/CallBack;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/PayImpl;Lcom/wandoujia/p4/pay/model/CallBack;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 578
    iput-object p1, p0, Lcom/wandoujia/p4/pay/PayImpl$8;->this$0:Lcom/wandoujia/p4/pay/PayImpl;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/PayImpl$8;->val$callBack:Lcom/wandoujia/p4/pay/model/CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 5
    .parameter

    .prologue
    .line 581
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 582
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v0

    .line 584
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 585
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 587
    :cond_0
    iget-object v1, p0, Lcom/wandoujia/p4/pay/PayImpl$8;->val$callBack:Lcom/wandoujia/p4/pay/model/CallBack;

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u3002 \u9519\u8bef\u4fe1\u606f\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/wandoujia/p4/pay/model/CallBack;->onError(ILjava/lang/String;)V

    .line 589
    return-void
.end method
