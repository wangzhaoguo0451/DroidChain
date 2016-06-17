.class Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$1;
.super Ljava/lang/Object;
.source "MyBonusFragment.java"

# interfaces
.implements Lcom/wandoujia/rpc/http/callback/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/rpc/http/callback/Callback",
        "<",
        "Lcom/wandoujia/p4/model/PayParams;",
        "Ljava/util/concurrent/ExecutionException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Ljava/lang/Exception;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    check-cast p1, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$1;->onError(Ljava/util/concurrent/ExecutionException;)V

    return-void
.end method

.method public onError(Ljava/util/concurrent/ExecutionException;)V
    .locals 1
    .parameter

    .prologue
    .line 159
    const-string v0, "Wandou"

    invoke-static {v0, p1}, Lcom/wandoujia/base/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    return-void
.end method

.method public onSuccess(Lcom/wandoujia/p4/model/PayParams;)V
    .locals 19
    .parameter

    .prologue
    .line 111
    :try_start_0
    const-string v2, "Wandou"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "asyncLoad:  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/wandoujia/p4/model/PayParams;->content:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/wandoujia/base/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/wandoujia/p4/model/PayParams;->content:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 113
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 114
    new-instance v7, Lorg/json/JSONArray;

    const-string v3, "result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 115
    const/4 v2, 0x0

    move v5, v2

    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v5, v2, :cond_1

    .line 116
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 117
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 118
    const-string v3, "expirationTime"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Ljava/util/Date;->setTime(J)V

    .line 119
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;

    const v3, 0x7f0e041f

    invoke-virtual {v2, v3}, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    const-string v3, "payBonusRule"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 124
    if-eqz v10, :cond_3

    const-string v3, "title"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 125
    const-string v2, "title"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 128
    :goto_1
    const/4 v3, 0x0

    .line 129
    const/4 v2, 0x0

    .line 130
    if-eqz v10, :cond_2

    .line 131
    const-string v2, "description"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    const-string v2, "iconUrl"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v2

    move-object v2, v3

    move-object/from16 v3, v18

    .line 135
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 136
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    :goto_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;

    const v13, 0x7f0e041a

    invoke-virtual {v12, v13}, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;

    const-string v13, "money"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string v13, "consumedMoney"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    sub-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    #calls: Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;->toBigDecimal(Ljava/lang/Long;)Ljava/lang/String;
    invoke-static {v12, v8}, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;->access$000(Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;

    const v12, 0x7f0e00d0

    invoke-virtual {v11, v12}, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;

    const v12, 0x7f0e041b

    invoke-virtual {v11, v12}, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;->getMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    invoke-static {v10, v4, v8, v2, v3}, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;->access$100(Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_0

    .line 138
    :cond_0
    const-string v2, ""

    goto :goto_3

    .line 150
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;->bonusList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;->access$200(Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;)Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$BonusAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;

    invoke-virtual {v4}, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$BonusAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_4
    return-void

    .line 153
    :catch_0
    move-exception v2

    goto :goto_4

    :cond_2
    move-object/from16 v18, v2

    move-object v2, v3

    move-object/from16 v3, v18

    goto/16 :goto_2

    :cond_3
    move-object v4, v2

    goto/16 :goto_1
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    check-cast p1, Lcom/wandoujia/p4/model/PayParams;

    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/pay/fragment/MyBonusFragment$1;->onSuccess(Lcom/wandoujia/p4/model/PayParams;)V

    return-void
.end method
