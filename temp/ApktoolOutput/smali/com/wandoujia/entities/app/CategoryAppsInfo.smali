.class public Lcom/wandoujia/entities/app/CategoryAppsInfo;
.super Ljava/lang/Object;
.source "CategoryAppsInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/AppLiteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private category:Lcom/wandoujia/entities/app/BelongInfo;

.field private isRealCategory:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/entities/app/CategoryAppsInfo;->apps:Ljava/util/List;

    .line 26
    new-instance v0, Lcom/wandoujia/entities/app/BelongInfo;

    invoke-direct {v0}, Lcom/wandoujia/entities/app/BelongInfo;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/entities/app/CategoryAppsInfo;->category:Lcom/wandoujia/entities/app/BelongInfo;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/entities/app/CategoryAppsInfo;->isRealCategory:Z

    .line 28
    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/AppLiteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/wandoujia/entities/app/CategoryAppsInfo;->apps:Ljava/util/List;

    return-object v0
.end method

.method public getCategory()Lcom/wandoujia/entities/app/BelongInfo;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/wandoujia/entities/app/CategoryAppsInfo;->category:Lcom/wandoujia/entities/app/BelongInfo;

    return-object v0
.end method

.method public isRealCategory()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/wandoujia/entities/app/CategoryAppsInfo;->isRealCategory:Z

    return v0
.end method
