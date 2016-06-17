.class public final Lcom/wandoujia/shared_storage/IgnoreWashApps;
.super Lhpu;
.source "IgnoreWashApps.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhpu",
        "<",
        "Lcom/wandoujia/shared_storage/IgnoreWashApps$IgnoreWashApp;",
        ">;"
    }
.end annotation


# virtual methods
.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "ignore_wash_apps"

    return-object v0
.end method

.method protected final c()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lhpt;

    invoke-direct {v0}, Lhpt;-><init>()V

    invoke-virtual {v0}, Lhpt;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method
