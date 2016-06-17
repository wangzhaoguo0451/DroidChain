.class public interface abstract Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;
.super Ljava/lang/Object;
.source "IncomingStreamHandler.java"


# static fields
.field public static final REFUSE_INCOMING_STREAMS:Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lbzm;

    invoke-direct {v0}, Lbzm;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;->REFUSE_INCOMING_STREAMS:Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;

    return-void
.end method


# virtual methods
.method public abstract receive(Lcah;)V
.end method
