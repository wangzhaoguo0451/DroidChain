.class public final Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CardPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/CardPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public identity:Ljava/lang/String;

.field public num:Ljava/lang/Integer;

.field public parent_id:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public sub_status:Ljava/lang/String;

.field public sub_type:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 129
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/CardPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 133
    if-nez p1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CardPackage;->identity:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->identity:Ljava/lang/String;

    .line 135
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CardPackage;->parent_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->parent_id:Ljava/lang/String;

    .line 136
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CardPackage;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->type:Ljava/lang/String;

    .line 137
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CardPackage;->sub_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->sub_type:Ljava/lang/String;

    .line 138
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CardPackage;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->tag:Ljava/lang/String;

    .line 139
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CardPackage;->status:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->status:Ljava/lang/String;

    .line 140
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CardPackage;->sub_status:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->sub_status:Ljava/lang/String;

    .line 141
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CardPackage;->num:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->num:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/CardPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/CardPackage;
    .locals 2

    .prologue
    .line 210
    new-instance v0, Lcom/wandoujia/logv3/model/packages/CardPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/CardPackage;-><init>(Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final identity(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->identity:Ljava/lang/String;

    .line 149
    return-object p0
.end method

.method public final num(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->num:Ljava/lang/Integer;

    .line 205
    return-object p0
.end method

.method public final parent_id(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->parent_id:Ljava/lang/String;

    .line 157
    return-object p0
.end method

.method public final status(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->status:Ljava/lang/String;

    .line 189
    return-object p0
.end method

.method public final sub_status(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->sub_status:Ljava/lang/String;

    .line 197
    return-object p0
.end method

.method public final sub_type(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->sub_type:Ljava/lang/String;

    .line 173
    return-object p0
.end method

.method public final tag(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->tag:Ljava/lang/String;

    .line 181
    return-object p0
.end method

.method public final type(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->type:Ljava/lang/String;

    .line 165
    return-object p0
.end method
