.class public final Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ContentPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/ContentPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public identity:Ljava/lang/String;

.field public is_free:Ljava/lang/Boolean;

.field public parent_id:Ljava/lang/String;

.field public parent_type:Ljava/lang/String;

.field public sub_type:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 120
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/ContentPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 124
    if-nez p1, :cond_0

    .line 132
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ContentPackage;->identity:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->identity:Ljava/lang/String;

    .line 126
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ContentPackage;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->title:Ljava/lang/String;

    .line 127
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ContentPackage;->type:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->type:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    .line 128
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ContentPackage;->sub_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->sub_type:Ljava/lang/String;

    .line 129
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ContentPackage;->is_free:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->is_free:Ljava/lang/Boolean;

    .line 130
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ContentPackage;->parent_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->parent_id:Ljava/lang/String;

    .line 131
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ContentPackage;->parent_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->parent_type:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ContentPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/ContentPackage;
    .locals 2

    .prologue
    .line 192
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ContentPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/ContentPackage;-><init>(Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final identity(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->identity:Ljava/lang/String;

    .line 139
    return-object p0
.end method

.method public final is_free(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->is_free:Ljava/lang/Boolean;

    .line 171
    return-object p0
.end method

.method public final parent_id(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->parent_id:Ljava/lang/String;

    .line 179
    return-object p0
.end method

.method public final parent_type(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->parent_type:Ljava/lang/String;

    .line 187
    return-object p0
.end method

.method public final sub_type(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->sub_type:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->title:Ljava/lang/String;

    .line 147
    return-object p0
.end method

.method public final type(Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->type:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    .line 155
    return-object p0
.end method
