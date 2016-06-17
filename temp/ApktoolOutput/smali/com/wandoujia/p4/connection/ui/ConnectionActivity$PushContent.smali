.class Lcom/wandoujia/p4/connection/ui/ConnectionActivity$PushContent;
.super Ljava/lang/Object;
.source "ConnectionActivity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private authcode:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private udid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lcom/wandoujia/p4/connection/ui/ConnectionActivity$PushContent;->type:Ljava/lang/String;

    .line 188
    iput-object p2, p0, Lcom/wandoujia/p4/connection/ui/ConnectionActivity$PushContent;->udid:Ljava/lang/String;

    .line 189
    iput-object p3, p0, Lcom/wandoujia/p4/connection/ui/ConnectionActivity$PushContent;->authcode:Ljava/lang/String;

    .line 190
    return-void
.end method
