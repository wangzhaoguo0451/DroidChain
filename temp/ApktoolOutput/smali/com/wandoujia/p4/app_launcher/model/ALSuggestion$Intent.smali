.class public Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Intent;
.super Ljava/lang/Object;
.source "ALSuggestion.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public action:Ljava/lang/String;

.field public componentClass:Ljava/lang/String;

.field public componentPackage:Ljava/lang/String;

.field public intentExtrasList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Extra;",
            ">;"
        }
    .end annotation
.end field

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
