.class public Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy$UrlRules;
.super Ljava/lang/Object;
.source "DynamicStrategy.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2c4489efc636ce1bL


# instance fields
.field public cacheModifyRules:[Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy$ModifyRules;

.field public urlPattern:Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy$UrlPattern;

.field public usingInDownload:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
