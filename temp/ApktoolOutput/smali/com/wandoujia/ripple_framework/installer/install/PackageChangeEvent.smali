.class public final Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent;
.super Ljava/lang/Object;
.source "PackageChangeEvent.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent;->b:Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;

    .line 24
    return-void
.end method
