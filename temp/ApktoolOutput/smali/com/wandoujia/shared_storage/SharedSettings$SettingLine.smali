.class public Lcom/wandoujia/shared_storage/SharedSettings$SettingLine;
.super Lcom/wandoujia/shared_storage/StorageLine;
.source "SharedSettings.java"


# instance fields
.field private final key:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, v0, v0}, Lcom/wandoujia/shared_storage/SharedSettings$SettingLine;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/wandoujia/shared_storage/StorageLine;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/wandoujia/shared_storage/SharedSettings$SettingLine;->key:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/wandoujia/shared_storage/SharedSettings$SettingLine;->value:Ljava/lang/String;

    .line 94
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/wandoujia/shared_storage/SharedSettings$SettingLine;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/wandoujia/shared_storage/SharedSettings$SettingLine;->value:Ljava/lang/String;

    return-object v0
.end method
