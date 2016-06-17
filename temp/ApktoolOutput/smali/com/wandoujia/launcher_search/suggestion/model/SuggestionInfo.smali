.class public Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo;
.super Ljava/lang/Object;
.source "SuggestionInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public inputId:Ljava/lang/String;

.field public suggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method
