.class public Lcom/wandoujia/p4/account/http/model/UserPrivacyStatusModel;
.super Ljava/lang/Object;
.source "UserPrivacyStatusModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private privacyStatus:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/account/http/model/UserPrivacyStatusModel;->privacyStatus:Z

    return-void
.end method


# virtual methods
.method public isPrivacyStatus()Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/wandoujia/p4/account/http/model/UserPrivacyStatusModel;->privacyStatus:Z

    return v0
.end method
