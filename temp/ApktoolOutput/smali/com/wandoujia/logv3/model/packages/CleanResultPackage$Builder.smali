.class public final Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CleanResultPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/CleanResultPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public clean_id:Ljava/lang/String;

.field public content_id:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public read_day:Ljava/lang/Integer;

.field public recommend:Ljava/lang/Integer;

.field public size:Ljava/lang/Long;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 130
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/CleanResultPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 134
    if-nez p1, :cond_0

    .line 143
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->clean_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;->clean_id:Ljava/lang/String;

    .line 136
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;->type:Ljava/lang/String;

    .line 137
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->size:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;->size:Ljava/lang/Long;

    .line 138
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->content_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;->content_id:Ljava/lang/String;

    .line 139
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;->title:Ljava/lang/String;

    .line 140
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->recommend:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;->recommend:Ljava/lang/Integer;

    .line 141
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->read_day:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;->read_day:Ljava/lang/Integer;

    .line 142
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;->path:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/CleanResultPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/CleanResultPackage;
    .locals 2

    .prologue
    .line 211
    new-instance v0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/CleanResultPackage;-><init>(Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final clean_id(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;->clean_id:Ljava/lang/String;

    .line 150
    return-object p0
.end method

.method public final content_id(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;->content_id:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public final path(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;->path:Ljava/lang/String;

    .line 206
    return-object p0
.end method

.method public final read_day(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;->read_day:Ljava/lang/Integer;

    .line 198
    return-object p0
.end method

.method public final recommend(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;->recommend:Ljava/lang/Integer;

    .line 190
    return-object p0
.end method

.method public final size(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;->size:Ljava/lang/Long;

    .line 166
    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;->title:Ljava/lang/String;

    .line 182
    return-object p0
.end method

.method public final type(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/CleanResultPackage$Builder;->type:Ljava/lang/String;

    .line 158
    return-object p0
.end method
