.class public Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;
.super Ljava/lang/Object;
.source "LauncherSuggestionModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private appLiteInfo:Lcom/wandoujia/entities/app/AppLiteInfo;

.field private packageName:Ljava/lang/String;

.field private reason:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppLiteInfo()Lcom/wandoujia/entities/app/AppLiteInfo;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;->appLiteInfo:Lcom/wandoujia/entities/app/AppLiteInfo;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public setAppLiteInfo(Lcom/wandoujia/entities/app/AppLiteInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;->appLiteInfo:Lcom/wandoujia/entities/app/AppLiteInfo;

    .line 40
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;->packageName:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;->reason:Ljava/lang/String;

    .line 32
    return-void
.end method
