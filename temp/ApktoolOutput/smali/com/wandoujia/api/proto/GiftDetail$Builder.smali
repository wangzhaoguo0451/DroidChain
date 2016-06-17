.class public final Lcom/wandoujia/api/proto/GiftDetail$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "GiftDetail.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/GiftDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public cdkey:Ljava/lang/String;

.field public cdkey_id:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public directions:Ljava/lang/String;

.field public end_date_stamp:Ljava/lang/Long;

.field public exchange_date_range:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field public is_received:Ljava/lang/Boolean;

.field public package_name:Ljava/lang/String;

.field public provide_type:Ljava/lang/String;

.field public received_count:Ljava/lang/Integer;

.field public remnant_count:Ljava/lang/Integer;

.field public special_action:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 152
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/GiftDetail;)V
    .locals 1
    .parameter

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 156
    if-nez p1, :cond_0

    .line 171
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail$Builder;->title:Ljava/lang/String;

    .line 158
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail$Builder;->description:Ljava/lang/String;

    .line 159
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail;->package_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail$Builder;->package_name:Ljava/lang/String;

    .line 160
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail;->received_count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail$Builder;->received_count:Ljava/lang/Integer;

    .line 161
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail;->remnant_count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail$Builder;->remnant_count:Ljava/lang/Integer;

    .line 162
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail;->is_received:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail$Builder;->is_received:Ljava/lang/Boolean;

    .line 163
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail;->exchange_date_range:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail$Builder;->exchange_date_range:Ljava/lang/String;

    .line 164
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail;->directions:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail$Builder;->directions:Ljava/lang/String;

    .line 165
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail;->cdkey:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail$Builder;->cdkey:Ljava/lang/String;

    .line 166
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail;->special_action:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail$Builder;->special_action:Ljava/lang/String;

    .line 167
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail;->id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail$Builder;->id:Ljava/lang/Long;

    .line 168
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail;->cdkey_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail$Builder;->cdkey_id:Ljava/lang/String;

    .line 169
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail;->provide_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail$Builder;->provide_type:Ljava/lang/String;

    .line 170
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail;->end_date_stamp:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/GiftDetail$Builder;->end_date_stamp:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/GiftDetail$Builder;->build()Lcom/wandoujia/api/proto/GiftDetail;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/GiftDetail;
    .locals 2

    .prologue
    .line 245
    new-instance v0, Lcom/wandoujia/api/proto/GiftDetail;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/GiftDetail;-><init>(Lcom/wandoujia/api/proto/GiftDetail$Builder;Ld;)V

    return-object v0
.end method

.method public final cdkey(Ljava/lang/String;)Lcom/wandoujia/api/proto/GiftDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/wandoujia/api/proto/GiftDetail$Builder;->cdkey:Ljava/lang/String;

    .line 215
    return-object p0
.end method

.method public final cdkey_id(Ljava/lang/String;)Lcom/wandoujia/api/proto/GiftDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/wandoujia/api/proto/GiftDetail$Builder;->cdkey_id:Ljava/lang/String;

    .line 230
    return-object p0
.end method

.method public final description(Ljava/lang/String;)Lcom/wandoujia/api/proto/GiftDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/wandoujia/api/proto/GiftDetail$Builder;->description:Ljava/lang/String;

    .line 180
    return-object p0
.end method

.method public final directions(Ljava/lang/String;)Lcom/wandoujia/api/proto/GiftDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/wandoujia/api/proto/GiftDetail$Builder;->directions:Ljava/lang/String;

    .line 210
    return-object p0
.end method

.method public final end_date_stamp(Ljava/lang/Long;)Lcom/wandoujia/api/proto/GiftDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/wandoujia/api/proto/GiftDetail$Builder;->end_date_stamp:Ljava/lang/Long;

    .line 240
    return-object p0
.end method

.method public final exchange_date_range(Ljava/lang/String;)Lcom/wandoujia/api/proto/GiftDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/wandoujia/api/proto/GiftDetail$Builder;->exchange_date_range:Ljava/lang/String;

    .line 205
    return-object p0
.end method

.method public final id(Ljava/lang/Long;)Lcom/wandoujia/api/proto/GiftDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/wandoujia/api/proto/GiftDetail$Builder;->id:Ljava/lang/Long;

    .line 225
    return-object p0
.end method

.method public final is_received(Ljava/lang/Boolean;)Lcom/wandoujia/api/proto/GiftDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/wandoujia/api/proto/GiftDetail$Builder;->is_received:Ljava/lang/Boolean;

    .line 200
    return-object p0
.end method

.method public final package_name(Ljava/lang/String;)Lcom/wandoujia/api/proto/GiftDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/wandoujia/api/proto/GiftDetail$Builder;->package_name:Ljava/lang/String;

    .line 185
    return-object p0
.end method

.method public final provide_type(Ljava/lang/String;)Lcom/wandoujia/api/proto/GiftDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/wandoujia/api/proto/GiftDetail$Builder;->provide_type:Ljava/lang/String;

    .line 235
    return-object p0
.end method

.method public final received_count(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/GiftDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/wandoujia/api/proto/GiftDetail$Builder;->received_count:Ljava/lang/Integer;

    .line 190
    return-object p0
.end method

.method public final remnant_count(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/GiftDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/wandoujia/api/proto/GiftDetail$Builder;->remnant_count:Ljava/lang/Integer;

    .line 195
    return-object p0
.end method

.method public final special_action(Ljava/lang/String;)Lcom/wandoujia/api/proto/GiftDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/wandoujia/api/proto/GiftDetail$Builder;->special_action:Ljava/lang/String;

    .line 220
    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/wandoujia/api/proto/GiftDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/wandoujia/api/proto/GiftDetail$Builder;->title:Ljava/lang/String;

    .line 175
    return-object p0
.end method
