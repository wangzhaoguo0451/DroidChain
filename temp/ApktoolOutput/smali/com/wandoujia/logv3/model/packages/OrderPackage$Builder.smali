.class public final Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "OrderPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/OrderPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public app_key_id:Ljava/lang/Integer;

.field public charge_type:Ljava/lang/String;

.field public default_charge_type:Ljava/lang/String;

.field public default_money:Ljava/lang/Integer;

.field public link_order_id:Ljava/lang/Integer;

.field public money:Ljava/lang/Integer;

.field public order_id:Ljava/lang/Integer;

.field public order_money:Ljava/lang/Integer;

.field public trade_status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 140
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/OrderPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 144
    if-nez p1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/OrderPackage;->order_id:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;->order_id:Ljava/lang/Integer;

    .line 146
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/OrderPackage;->link_order_id:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;->link_order_id:Ljava/lang/Integer;

    .line 147
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/OrderPackage;->app_key_id:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;->app_key_id:Ljava/lang/Integer;

    .line 148
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/OrderPackage;->default_charge_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;->default_charge_type:Ljava/lang/String;

    .line 149
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/OrderPackage;->default_money:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;->default_money:Ljava/lang/Integer;

    .line 150
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/OrderPackage;->order_money:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;->order_money:Ljava/lang/Integer;

    .line 151
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/OrderPackage;->charge_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;->charge_type:Ljava/lang/String;

    .line 152
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/OrderPackage;->money:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;->money:Ljava/lang/Integer;

    .line 153
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/OrderPackage;->trade_status:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;->trade_status:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final app_key_id(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;->app_key_id:Ljava/lang/Integer;

    .line 177
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/OrderPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/OrderPackage;
    .locals 2

    .prologue
    .line 230
    new-instance v0, Lcom/wandoujia/logv3/model/packages/OrderPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/OrderPackage;-><init>(Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final charge_type(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;->charge_type:Ljava/lang/String;

    .line 209
    return-object p0
.end method

.method public final default_charge_type(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;->default_charge_type:Ljava/lang/String;

    .line 185
    return-object p0
.end method

.method public final default_money(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;->default_money:Ljava/lang/Integer;

    .line 193
    return-object p0
.end method

.method public final link_order_id(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;->link_order_id:Ljava/lang/Integer;

    .line 169
    return-object p0
.end method

.method public final money(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;->money:Ljava/lang/Integer;

    .line 217
    return-object p0
.end method

.method public final order_id(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;->order_id:Ljava/lang/Integer;

    .line 161
    return-object p0
.end method

.method public final order_money(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;->order_money:Ljava/lang/Integer;

    .line 201
    return-object p0
.end method

.method public final trade_status(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/OrderPackage$Builder;->trade_status:Ljava/lang/String;

    .line 225
    return-object p0
.end method
