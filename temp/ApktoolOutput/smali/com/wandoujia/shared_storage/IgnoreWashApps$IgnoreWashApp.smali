.class public Lcom/wandoujia/shared_storage/IgnoreWashApps$IgnoreWashApp;
.super Lcom/wandoujia/shared_storage/StorageLine;
.source "IgnoreWashApps.java"


# instance fields
.field private ignoreMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/wandoujia/shared_storage/IgnoreWashApps$IgnoreType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/wandoujia/shared_storage/IgnoreWashApps$IgnoreWashApp;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/wandoujia/shared_storage/StorageLine;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/shared_storage/IgnoreWashApps$IgnoreWashApp;->ignoreMap:Ljava/util/HashMap;

    .line 45
    iput-object p1, p0, Lcom/wandoujia/shared_storage/IgnoreWashApps$IgnoreWashApp;->pkgName:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/wandoujia/shared_storage/IgnoreWashApps$IgnoreWashApp;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5(Lcom/wandoujia/shared_storage/IgnoreWashApps$IgnoreType;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/wandoujia/shared_storage/IgnoreWashApps$IgnoreWashApp;->ignoreMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public ignore(Lcom/wandoujia/shared_storage/IgnoreWashApps$IgnoreType;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wandoujia/shared_storage/IgnoreWashApps$IgnoreWashApp;->ignoreMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public isIgnored(Lcom/wandoujia/shared_storage/IgnoreWashApps$IgnoreType;)Z
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/wandoujia/shared_storage/IgnoreWashApps$IgnoreWashApp;->ignoreMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
