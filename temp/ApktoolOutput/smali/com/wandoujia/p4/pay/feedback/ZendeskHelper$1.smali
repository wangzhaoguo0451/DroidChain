.class Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$1;
.super Ljava/lang/Object;
.source "ZendeskHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;

.field final synthetic val$categoryId:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;Landroid/content/Context;ILcom/wandoujia/p4/pay/storage/LocalStorage;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$1;->this$0:Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$1;->val$categoryId:I

    iput-object p4, p0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$1;->val$localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/wandoujia/p4/pay/httpapi/PayHttp;->getTicketFieldResponse(Landroid/content/Context;)Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketFieldResponse;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketFieldResponse;->getTicket_field()Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketField;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 158
    iget v1, p0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$1;->val$categoryId:I

    const v2, 0x169f845

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$1;->val$categoryId:I

    const v2, 0x1457863

    if-ne v1, v2, :cond_2

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$1;->val$localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketFieldResponse;->getTicket_field()Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketField;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/pay/utils/ExternUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->setFeedbackCategoryList(Ljava/lang/String;)V

    .line 173
    :cond_1
    :goto_0
    return-void

    .line 162
    :cond_2
    iget v1, p0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$1;->val$categoryId:I

    const v2, 0x169f859

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$1;->val$categoryId:I

    const v2, 0x14623a9

    if-ne v1, v2, :cond_1

    .line 164
    :cond_3
    iget-object v1, p0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$1;->val$localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketFieldResponse;->getTicket_field()Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketField;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/pay/utils/ExternUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->setFeedbackChildrenCategoryList(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    goto :goto_0
.end method
