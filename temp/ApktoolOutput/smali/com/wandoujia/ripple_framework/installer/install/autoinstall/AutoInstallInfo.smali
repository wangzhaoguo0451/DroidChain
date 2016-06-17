.class public Lcom/wandoujia/ripple_framework/installer/install/autoinstall/AutoInstallInfo;
.super Ljava/lang/Object;
.source "AutoInstallInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private isBlocked:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/installer/install/autoinstall/AutoInstallInfo;->isBlocked:Z

    return-void
.end method


# virtual methods
.method public getIsBlocked()Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/installer/install/autoinstall/AutoInstallInfo;->isBlocked:Z

    return v0
.end method

.method public setIsBlocked(Z)V
    .locals 0
    .parameter

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/wandoujia/ripple_framework/installer/install/autoinstall/AutoInstallInfo;->isBlocked:Z

    .line 18
    return-void
.end method
