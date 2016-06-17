.class public Lcom/wandoujia/logv3/toolkit/treebuilder/PopupLogTreeBuilder$AnchorViewDetachedException;
.super Ljava/lang/RuntimeException;
.source "PopupLogTreeBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 210
    const-string v0, "The anchor view has been detached from decor view."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 211
    return-void
.end method
