.class public Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage$IgnoreUpdateApp;
.super Lcom/wandoujia/shared_storage/StorageLine;
.source "AppIgnoreUpdateStorage.java"


# instance fields
.field private final pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage$IgnoreUpdateApp;-><init>(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/wandoujia/shared_storage/StorageLine;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage$IgnoreUpdateApp;->pkgName:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage$IgnoreUpdateApp;->pkgName:Ljava/lang/String;

    return-object v0
.end method
