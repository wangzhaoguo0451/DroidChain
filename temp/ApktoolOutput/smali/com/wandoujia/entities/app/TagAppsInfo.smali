.class public Lcom/wandoujia/entities/app/TagAppsInfo;
.super Ljava/lang/Object;
.source "TagAppsInfo.java"

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

.field private category:Lcom/wandoujia/entities/app/TagInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/entities/app/TagAppsInfo;->apps:Ljava/util/List;

    .line 21
    new-instance v0, Lcom/wandoujia/entities/app/TagInfo;

    invoke-direct {v0}, Lcom/wandoujia/entities/app/TagInfo;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/entities/app/TagAppsInfo;->category:Lcom/wandoujia/entities/app/TagInfo;

    .line 22
    return-void
.end method


# virtual methods
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
    .line 16
    iget-object v0, p0, Lcom/wandoujia/entities/app/TagAppsInfo;->apps:Ljava/util/List;

    return-object v0
.end method

.method public getCategory()Lcom/wandoujia/entities/app/TagInfo;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/wandoujia/entities/app/TagAppsInfo;->category:Lcom/wandoujia/entities/app/TagInfo;

    return-object v0
.end method
