.class public Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;
.super Ljava/lang/Object;
.source "ALSuggestion.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5e17a8d704e25c9aL


# instance fields
.field public appsElemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public expireTime:I

.field public intentElemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method
