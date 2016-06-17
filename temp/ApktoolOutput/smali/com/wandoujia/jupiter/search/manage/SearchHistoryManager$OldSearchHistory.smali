.class public Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$OldSearchHistory;
.super Ljava/lang/Object;
.source "SearchHistoryManager.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x508c0310fad884ffL


# instance fields
.field history:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$OldSearchHistory;->history:Ljava/util/Map;

    .line 209
    return-void
.end method


# virtual methods
.method public getHistory()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$OldSearchHistory;->history:Ljava/util/Map;

    return-object v0
.end method
