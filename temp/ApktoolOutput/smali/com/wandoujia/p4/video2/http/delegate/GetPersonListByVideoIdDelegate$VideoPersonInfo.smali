.class public Lcom/wandoujia/p4/video2/http/delegate/GetPersonListByVideoIdDelegate$VideoPersonInfo;
.super Ljava/lang/Object;
.source "GetPersonListByVideoIdDelegate.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2273fbd25550683aL


# instance fields
.field public item:Lcom/wandoujia/p4/person/model/PersonInfo;

.field public label:Ljava/lang/String;

.field final synthetic this$0$1532b13d:Lcql;


# direct methods
.method public constructor <init>(Lcql;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/wandoujia/p4/video2/http/delegate/GetPersonListByVideoIdDelegate$VideoPersonInfo;->this$0$1532b13d:Lcql;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
