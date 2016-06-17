.class public Lcom/wandoujia/entities/app/AppLiteInfo$Tag;
.super Ljava/lang/Object;
.source "AppLiteInfo.java"

# interfaces
.implements Lcom/wandoujia/entities/app/IAppLiteInfo$ITag;
.implements Ljava/io/Serializable;


# instance fields
.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppLiteInfo$Tag;->tag:Ljava/lang/String;

    return-object v0
.end method
